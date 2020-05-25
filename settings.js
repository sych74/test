//checking quotas
var maxCloudletsPerRec = "environment.maxcloudletsperrec",
      isExtIp = "environment.externalip.enabled";
var maxCloudlets = 32,
      markup = "", cur = null, text = "used", install = true;

var settings = jps.settings;
var fields = {};

for (var i = 0, field; field = jps.settings.main.fields[i]; i++)
  fields[field.name] = field;
fields["le-addon"].hidden = true;
fields["le-addon"].value = false;

var quotas = jelastic.billing.account.GetQuotas(maxCloudletsPerRec + ";" + isExtIp).array;
for (var i = 0; i < quotas.length; i++){
    var q = quotas[i], n = toNative(q.quota.name);

    if (n == maxCloudletsPerRec && maxCloudlets > q.value){
      err(q, "required", maxCloudlets, true);
      install = false; 
    }

    if (n == isExtIp && q.value){
      fields["le-addon"].hidden = false;
    }    
}

return {
    result: 0,
    settings: settings
};

function err(e, text, cur, override){
  var m = (e.quota.description || e.quota.name) + " - " + e.value + ", " + text + " - " + cur + ". ";
  if (override) markup = m; else markup += m;
}

