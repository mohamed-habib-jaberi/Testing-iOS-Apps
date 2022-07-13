# Proxy

 start_proxy   

code ~/cntlm.conf.txt 

code ~/proxy/cntlm.conf 

cntlm -H -u jaberimo -d CDM

stop_proxy       

==========================

https://stackoverflow.com/questions/30828237/git-refuses-to-connect-without-proxy


Affich proxy : 

env|grep -i proxy


Delet proxy : 

 unset http_proxy
unset HTTP_PROXY

CNTLM_PROXY=127.0.0.1:3128
HTTP_PROXY=http://127.0.0.1:3128
HTTPS_PROXY=http://127.0.0.1:3128
http_proxy=http://127.0.0.1:3128
https_proxy=http://127.0.0.1:3128

unset CNTLM_PROXY
unset HTTP_PROXY
unset HTTPS_PROXY
unset http_proxy
unset https_proxy


Verify la suppression : 

  echo http_proxy 

=====================

*.local, 169.254/16, 192.168.*.*, *.cm-cic.fr, *.e-i.net, *.e-i.com, *.fivory.com, 10.45.*, *.cic.fr, *.creditmutuel.fr, *.annoncepresse.fr

*.local, 169.254/16




    
