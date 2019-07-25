var env1 = '${env.name}'.match(/^(.*?)(-1)?$/)[1],           
  env2 = env1 + "-1",
  resp = jelastic.env.control.GetEnvInfo(env2, session);
        
return { 
  result: 0, 
  env1: env1,
  env2: resp.result == 0 ? env2 : ""
};
