# Git multiple remote

Git multiple remote :

https://www.youtube.com/watch?v=H2dlBaHk3W0

Dans le dossier  de sdk restaurant :

eidd5180@iMacdeeidd5180S ios-restaurant-sdk % git remote -v
origin	https://gitlab.com/alephom/ios-restaurant-sdk.git (fetch)
origin	https://gitlab.com/alephom/ios-restaurant-sdk.git (push)
eidd5180@iMacdeeidd5180S ios-restaurant-sdk % git remote add ei_origin 
eidd5180@iMacdeeidd5180S ios-restaurant-sdk % git status
On branch master
Your branch is up to date with 'origin/master'.

nothing to commit, working tree clean
eidd5180@iMacdeeidd5180S ios-restaurant-sdk % git remote add ei_origin git@sd-gitlab.cm-cic.fr:mobile-ios/scan-and-go.git  (l’url de sek scan and go interne)
eidd5180@iMacdeeidd5180S ios-restaurant-sdk % git remote -v   
                                                           
ei_origin	git@sd-gitlab.cm-cic.fr:mobile-ios/scan-and-go.git (fetch)
ei_origin	git@sd-gitlab.cm-cic.fr:mobile-ios/scan-and-go.git (push)

origin	https://gitlab.com/alephom/ios-restaurant-sdk.git (fetch)
origin	https://gitlab.com/alephom/ios-restaurant-sdk.git (push)

eidd5180@iMacdeeidd5180S ios-restaurant-sdk % git push ei_origin --tags master  ==> push the new ei_origin remote source in master branch




