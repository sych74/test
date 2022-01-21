envName = getParam('envName');
envDomain = getParam('envDomain');

var resp = jelastic.environment.control.GetEnvs(appid, session);
if (resp.result != 0) return resp;

return { 
    result: 0,
    resp: resp
};
