#!/usr/bin/env bash
#Coded By Djawed Hammadi
#FACEBOOK:www.facebook.com/djawedx23
#Copyright@2020
droid(){
cd ..
name= cd xline/res/values/
app=$(grep '"app_name"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $app == "" ]];then
printf ""
elif [[ $app != "" ]];then
printf "\033[1;33mAPP_NAME \033[1;37m-->\033[0;32m Found : \033[1;37m$app\n\n"
fi
rojo3= cd ../../..
dromalaf= cd xline/smali/net/droidjack/server
sed 's+    const-string v0, +'http://'+g' br.smali > ok.smali
sed 's/"//g' ok.smali >> hello.smali
droidhost=$(grep -a "http://" hello.smali | cut -d '/' -f2- | tr -d '\0' |tr -d "/,")
if [[ $droidhost == "" ]];then
printf ""
elif [[ $droidhost != "" ]];then
printf "\033[1;33mHOST_OR_IP \033[1;37m-->\033[0;32m Found : \033[1;37m$droidhost\n\n"
fi
}
droid
