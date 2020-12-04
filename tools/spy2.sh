#!/usr/bin/env bash
#Coded By Djawed Hammadi
#FACEBOOK:www.facebook.com/djawedx23
#Copyright@2020
droid(){
cd ..
name= cd xline/res/values/
sed 's/<[^>]*>//g' strings.xml > titi.xml
perl -pe 's/   //' titi.xml > hello.xml
printf "\033[1;33mHOST OR IP \033[1;37m-->\033[0;32m FOUND : \033[1;37m";sed -n '8p' hello.xml; printf "\n"
printf "\033[1;33mPORT \033[1;37m-->\033[0;32m FOUND : \033[1;37m";sed -n '3p' hello.xml; printf "\n"
printf "\033[1;33mVictime_Name : \033[1;37m-->\033[0;32m FOUND : \033[1;37m";sed -n '15p' hello.xml; printf "\n"
}
droid