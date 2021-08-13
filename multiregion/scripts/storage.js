var resp = {
  result: 0,
  ssl: false,
  nodes: []
}

if ('${settings.glusterfs:false}' == 'true') {
  resp.nodes.push({
    nodeType: "storage",
    count: 3,
    cluster: true,
    flexibleCloudlets: ${settings.st_flexibleCloudlets:8},
    fixedCloudlets: ${settings.st_fixedCloudlets:1},
    nodeGroup: "storage",
    restartDelay: 10,
    isRedeploySupport: false,
    validation: {
      minCount: 3,
      maxCount: 3
    }
  })
} else {
  resp.nodes.push({
    nodeType: "storage",
    count: '${settings.storage_nodes_count:1}',
    cluster: '${settings.is_storage_cluster:false}',
    flexibleCloudlets: ${settings.st_flexibleCloudlets:8},
    fixedCloudlets: ${settings.st_fixedCloudlets:1},
    nodeGroup: "storage",
    isRedeploySupport: false,
    displayName: "Storage",
    validation: {
      minCount: '${settings.storage_nodes_count:1}',
      maxCount: '${settings.storage_nodes_count:1}'
    }
  })
}
return resp;
