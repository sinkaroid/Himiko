#!/bin/bash
#sin

#view
RED=$(tput setaf 1) 
GREEN=$(tput setaf 2) 
CYAN=$(tput setaf 6) 
WHITE=$(tput setaf 7) 
MAGENTA=$(tput setaf 5) 

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
echo "YANDE.RE STEALER"

#get
read -p "${WHITE}artist/tags: " name
echo -e "\n"
read -p "${MAGENTA}${name} Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo -e "reading source for /${GREEN}$name ..
${WHITE}"

wget -O ${name}.html https://yande.re/post?tags=${name};

#do
mkdir result;
cat ${name}.html | grep img | grep -Po 'largeimg" href="\K.*?(?=")' | sed 's/\?.*//' > result/links.txt; 
cd result;
wget -i links.txt

#length
termin=$(date +"%s")
difftimelps=$(($termin-$begin))
echo "${WHITE}$(($difftimelps / 60)) minutes and $(($difftimelps % 60)) sec. elapsed ${RED}yande.re stealer"

