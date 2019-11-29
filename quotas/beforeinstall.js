var k8smCount = '${settings.topo}' == '0-dev' ? 1 : 3,
    workerCount = k8smCount > 1 ? 2 : 1, 
    tag = "${settings.version}";
var resp = {
  result: 0,
  ssl: !!jelastic.billing.account.GetQuotas('environment.jelasticssl.enabled').array[0].value,
  nodes: [{
    count: 1,
    cloudlets: 8,
    nodeType: "nginxphp-dockerized"
  }]
}

if ('${settings.storage}' == 'true') {
  var path = "/data";
  resp.nodes.push({
    count: 1,
    nodeType: "storage",
    cloudlets: 8,
    displayName: "Storage",
    nodeGroup: "storage",
    volumes: [
      path
    ]
  })
}
return resp;
