#!/usr/bin/env bash
#Coded By Djawed Hammadi
#FACEBOOK:www.facebook.com/djawedx23
#Copyright@2020
l3mon(){
cd ..
golwlh= cd xline/res/values/
nnn=$(grep '"app_name"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $nnn == "" ]];then
printf ""
elif [[ $nnn != "" ]];then
printf "\033[1;33mAPP_NAME \033[1;37m-->\033[0;32m Found : \033[1;37m$nnn\n\n"
fi
kimatabghi= cd ../../..
l3mon= cd xline/smali/com/etechd/l3mon
sed -i 's/?model="//' IOSocket.smali
l3monhost=$(grep -a "http://" IOSocket.smali | cut -d '/' -f2- | tr -d '\0' |tr -d "/,")
if [[ $l3monhost == "" ]];then
printf ""
elif [[ $l3monhost != "" ]];then
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m Found : \033[1;37m$l3monhost\n\n"
fi
}
l3mon
