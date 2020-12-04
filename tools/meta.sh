#!/usr/bin/env bash
#Coded By Djawed Hammadi
#Copyright@2020
metasploit(){
back= cd .. 
app= cd xline/res/values/
app_name=$(grep '"app_name"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
back_1= cd ../../..
printf "\033[0;34m[#] Start Building ...\n\n"
apktool b xline -o metasploit.apk > /dev/null 2>&1;
printf "\033[1;33mDone ..\n"
unzip metasploit.apk > /dev/null 2>&1;
printf "\n"
if [[ $app_name == "" ]];then
printf ""
elif [[ $app_name != "" ]];then
printf "\033[1;33mAPP_NAME \033[1;37m-->\033[0;32m FOUND : \033[1;37m$app_name\n"
fi
tcp=$(grep -a "tcp://" classes.dex | cut -d '/' -f2- | tr -d '\0' | tr -d "/,")
if [[ $tcp == "" ]];then
printf ""
elif [[ $tcp != "" ]];then
printf "\n"
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m FOUND : \033[1;37m$tcp\n\n"
fi
http=$(grep -a "http://" classes.dex | cut -d '/' -f2-| tr -d '\0'| cut -d '/' -f2)
if [[ $http == "" ]];then
printf ""
elif [[ $http != "" ]];then
printf "\n"
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m FOUND : \033[1;37m$http\n\n"
fi
https=$(grep -a "https://" classes.dex | cut -d '/' -f2-| tr -d '\0'| cut -d '/' -f2)
if [[ $https == "" ]];then
printf ""
elif [[ $https != "" ]];then
printf "\n"
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m FOUND : \033[1;37m$https\n\n"
fi
rm -r classes.dex resources.arsc AndroidManifest.xml metasploit.apk
}
metasploit  
