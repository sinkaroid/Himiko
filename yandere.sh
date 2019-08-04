#!/bin/bash
RED=$(tput setaf 1) 
GREEN=$(tput setaf 2) 
CYAN=$(tput setaf 6) 
WHITE=$(tput setaf 7) 

begin=$(date +"%s")

echo -e "${RED}
     )           ) (         (        
  ( /(  (     ( /( )\ )      )\ )     
  )\()) )\    )\()|()/(  (  (()/((    
 ((_)((((_)( ((_)\ /(_)) )\  /(_))\   
__ ((_)\ _ )\ _((_|_))_ ((_)(_))((_)  
\ \ / (_)_\(_) \| ||   \| __| _ \ __| 
 \ V / / _ \ | .' || |) | _||   / _|  
  |_| /_/ \_\|_|\_||___/|___|_|_\___|                                                  
"
echo -e "${WHITE}"
wget -O memek.html https://yande.re/post?tags=hews; #ur fav artist

#do
mkdir result;
cat memek.html | grep img | grep -Po 'largeimg" href="\K.*?(?=")' | sed 's/\?.*//' > result/links.txt; 
cd result;
wget -i links.txt

#length
termin=$(date +"%s")
difftimelps=$(($termin-$begin))
echo "${WHITE}$(($difftimelps / 60)) minutes and $(($difftimelps % 60)) sec. elapsed ${RED}/yandere.sh"

