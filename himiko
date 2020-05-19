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
 _   _ _           _ _              _     
| | | (_)         (_) |            | |    
| |_| |_ _ __ ___  _| | _____   ___| |__  
|  _  | | '_ ' _ \| | |/ / _ \ / __| '_ \ 
| | | | | | | | | | |   < (_) |\__ \ | | |
\_| |_/_|_| |_| |_|_|_|\_\___(_)___/_| |_|
                                             
"
echo "YANDE.RE STEALER"

#get
echo "tags/artist:"
read -r name

echo -e "\n"

echo "count:"
read -r count

echo -e "\n"

echo -e "reading source for /${GREEN}$name ..
${WHITE}"
json="cat ${name}.html"
jamet="cat links.txt"

wget -O ${name}.html https://yande.re/post?tags=${name};

#do
mkdir res;
${json} | grep img | grep -Po 'largeimg" href="\K.*?(?=")' | sed 's/\?.*//' > res/links.txt; 
rm ${name}.html
cd res;
${jamet} | sed "1,$count!d" > a.txt
wget -i a.txt
rm a.txt links.txt


#length
termin=$(date +"%s")
difftimelps=$(($termin-$begin))
echo "${WHITE}$(($difftimelps / 60)) minutes and $(($difftimelps % 60)) sec. elapsed ${RED}yande.re stealer"

