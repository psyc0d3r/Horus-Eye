#!/usr/bin/env bash
#Coded By Djawed Hammadi
#Copyright@2020
rat(){
cd ..
name= cd xline/res/values/
app=$(grep '"facebook"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $app == "" ]];then
printf ""
elif [[ $app != "" ]];then
printf "\033[1;33mAPP_NAME \033[1;37m-->\033[0;32m FOUND : \033[1;37m$app\n\n"
fi
rojo3= cd ../../..
ratmalaf= cd xline/smali/com/example/dat/a8andoserverx/
sed 's+    const-string v8, +''+g' MainService\$1.smali > ok.smali
sed 's+    const-string v9, +''+g' MainService\$1.smali > ok1.smali
sed 's/"//g' ok.smali > dido.smali
sed 's/"//g' ok1.smali > dido1.smali
printf "\033[1;33mHOST OR IP \033[1;37m-->\033[0;32m FOUND : \033[1;37m";sed -n '115p' dido.smali; printf "\n"
printf "\033[1;33mPORT \033[1;37m-->\033[0;32m FOUND : \033[1;37m";sed -n '125p' dido1.smali; printf "\n"
}
rat
