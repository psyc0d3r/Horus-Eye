#!/usr/bin/env bash
#Coded By Djawed Hammadi
#FACEBOOK:www.facebook.com/djawedx23
#Copyright@2020
ahm(){
cd ..
golwlh= cd xline/res/values/
nnn=$(grep '"app_name"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $nnn == "" ]];then
printf ""
elif [[ $nnn != "" ]];then
printf "\033[1;33mAPP_NAME \033[1;37m-->\033[0;32m Found : \033[1;37m$nnn\n\n"
fi
kimatabghi= cd ../../..
ahmmalaf= cd xline/smali/ahmyth/mine/king/ahmyth
sed -i 's/?model="//' IOSocket.smali
ahmhost=$(grep -a "http://" IOSocket.smali | cut -d '/' -f2- | tr -d '\0' |tr -d "/,")
if [[ $ahmhost == "" ]];then
printf ""
elif [[ $ahmhost != "" ]];then
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m Found : \033[1;37m$ahmhost\n\n"
fi
}
ahm
