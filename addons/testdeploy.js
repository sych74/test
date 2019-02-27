envName = getParam('envName');
envDomain = getParam('envDomain');
scriptName = getParam('action') == 'uninstall' ? 'undeployLE.sh' : 'deployLE.sh';

//getting first custom domain
customDomains = (getParam('customDomains') || "").replace(/^\s+|\s+$/gm , "").split(/\s*[;,\s]\s*/).shift(); 
domain = customDomains || envDomain;

//executing custom deployment hook script on master node
resp = jelastic.env.control.ExecCmdById(envName, session, getParam('nodeId'), toJSON([{ command:'cd gitlab && docker-compose up -d && cd .. && /bin/bash ' + scriptName}]), true);

//and restarting runners
return jelastic.env.control.ExecCmdByGroup(envName, session, 'runner', toJSON([{ command:'sed -i "s|https.*$|$CI_SERVER_URL\\"|g" /srv/docker/gitlab-runner/config.toml && service docker restart'}]), true, true);
