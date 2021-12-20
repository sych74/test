var resp = {
  result: 0,
  nodes: []
}
resp.nodes.push({
  nodeType: "opensearch",
  count: 1,
  flexibleCloudlets: ${settings.st_flexibleCloudlets:16},
  fixedCloudlets: ${settings.st_fixedCloudlets:1},
  nodeGroup: "nosqldb",
  displayName: "OpenSearch",
  validation: {
    maxCount: 1
  },
  cluster: {
    is_opensearchdashboards: false,
    success_email: false,
  }
})

return resp;
