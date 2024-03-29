var wpbfp = '${settings.wp_protect}' == 'true' ? "THROTTLE" : "OFF";
var db_cluster = '${settings.galera}' == 'true' ? "galera" : "master";
var db_count = '${settings.galera}' == 'true' ? 3 : 2;

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

resp.nodes.push({
    nodeType: "litespeedadc",
    extip: true,
    count: ${settings.bl_count:1},
    flexibleCloudlets: ${settings.bl_flexibleCloudlets:8},
    fixedCloudlets: ${settings.bl_fixedCloudlets:1},
    nodeGroup: "bl",
    restartDelay: 10,
    scalingMode: "STATEFUL",
    displayName: "Load balancer",
    env: {
      WP_PROTECT_LIMIT: 100,
      DEFAULT_CLUSTER: "FALSE"
    }
  }, {
    nodeType: "litespeedphp",
    count: ${settings.cp_count:1},
    flexibleCloudlets: ${settings.cp_flexibleCloudlets:16},
    fixedCloudlets: ${settings.cp_fixedCloudlets:1},
    nodeGroup: "cp",
    restartDelay: 10,
    displayName: "AppServer",
    env: {
      SERVER_WEBROOT: "/var/www/webroot/ROOT",
    }
  })

return resp;
