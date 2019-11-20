//checking quotas
var perEnv = "environment.maxnodescount",
    maxEnvs = "environment.maxcount",
    perNodeGroup = "environment.maxsamenodescount";
var envsCount = jelastic.env.control.GetEnvs({lazy: true}).infos.length,
    nodesPerProdEnv = 8,
    nodesPerProdEnvWOStorage = 7,
    nodesPerDevEnv = 3,
    nodesPerDevEnvWOStorage = 2,
    nodesPerMasterNG = 3,
    nodesPerWorkerNG = 2,
    markup = "", cur = null, text = "used", prod = true, dev = true, prodStorage = true, devStorage = true;

var quotas = jelastic.billing.account.GetQuotas(perEnv + ";"+maxEnvs+";" + perNodeGroup).array;
var group = jelastic.billing.account.GetAccount(appid, session);
for (var i = 0; i < quotas.length; i++){
    var q = quotas[i], n = toNative(q.quota.name);
    if (n == maxEnvs && envsCount >= q.value){
        err(q, "already used", envsCount, true);
        markup = "Maximum allowed environments: " + markup;
        prod = dev = storage = false; break;
    }

    if (n == perEnv && nodesPerDevEnvWOStorage > q.value){
        err(q, "required", nodesPerDevEnvWOStorage, true);
        prod = dev = storage = false;    
    }
 
    if (n == perEnv && nodesPerDevEnvWOStorage  == q.value) devStorage = false;
 
    if (n == perEnv && nodesPerProdEnvWOStorage > q.value){
        if (!markup) err(q, "required", nodesPerProdEnvWOStorage);
        prod = false;
    }

    if (n == perEnv && nodesPerProdEnvWOStorage  == q.value) prodStorage = false;
    
    if (n == perNodeGroup && nodesPerMasterNG > q.value){
        if (!markup) err(q, "required", nodesPerMasterNG);
        prod = false;
    }
    
    if (n == perNodeGroup && nodesPerWorkerNG > q.value){
        if (!markup) err(q, "required", nodesPerWorkerNG);
        prod = false;
    }
}
var resp = {result:0};
var url = "https://raw.githubusercontent.com/sych74/test/master/quotas/settings.yaml";
resp.settings = toNative(new org.yaml.snakeyaml.Yaml().load(new com.hivext.api.core.utils.Transport().get(url)));
var f = resp.settings.fields;
         
if (!prod && !dev){
    for (var i = 0; i < f.length; i++) f[i].disabled = true;
    f[3].hidden = false;
    f[3].disabled = false;
    f[3].markup =  "Production and Development topologies are not available. " + markup + "Please upgrade your account.";
    f[3].height =  60;
        
    f.push({
        "type": "compositefield",
        "height" : 0,
        "hideLabel": true,
        "width": 0,
        "items": [{
            "height" : 0,
            "type": "string",
            "required": true,
        }]
    });
}
    
if (!prod && dev){
    f[2].values[1].disabled = true;
    f[3].hidden = false;
    f[3].markup =  "Production topology is not available. " + markup + "Please upgrade your account.";
    f[3].height =  50;
    if (!devStorage){ 
        f[6].disabled = true;
        f[6].value = false;
    }
}      

if (!prodStorage){ 
    f[6].disabled = true;
    f[6].value = false;
}

if (group.groupType == 'trial') {
    f[8].hidden = false;
    f[8].markup =  "Not available for " + group.groupType + " account. Please upgrade your account."
    f[9].disabled = true;
    f[10].disabled = true;
}    

return resp;

function err(e, text, cur, override){
  var m = (e.quota.description || e.quota.name) + " - " + e.value + ", " + text + " - " + cur + ". ";
  if (override) markup = m; else markup += m;
}
