#!/usr/bin/env bash
#Coded By Djawed Hammadi
#Copyright@2020
andro(){
cd ..
name= cd xline/res/values/
app=$(grep '"app_name"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $app == "" ]];then
printf ""
elif [[ $app != "" ]];then
printf "\033[1;33mAPP_NAME \033[1;37m-->\033[0;32m FOUND : \033[1;37m$app\n\n"
fi
rojo3= cd ../../..
andromalaf= cd xline/smali/my/app/client/
sed 's+    const-string v0, +'http://'+g' LauncherActivity.smali > ok.smali
sed 's+    const-string v1, +''+g' LauncherActivity.smali >> ok.smali
sed 's/"//g' ok.smali >> hello.smali
androhost=$(grep -a "http://" hello.smali | cut -d '/' -f2- | tr -d '\0' |tr -d "/,")
if [[ $androhost == "" ]];then
printf ""
elif [[ $androhost != "" ]];then
printf "\033[1;33mHOST OR IP \033[1;37m-->\033[0;32m FOUND : \033[1;37m$androhost\n\n"
fi 
printf "\033[1;33mPORT \033[1;37m-->\033[0;32m FOUND : \033[1;37m";sed -n '599p' hello.smali; printf "\n"
}
andro
