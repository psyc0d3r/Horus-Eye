#!/usr/bin/env bash
#Coded By : Djawed Hammadi
#Copyright@2020
#Lets_Start
#----------
#banner :
banner(){
banner= cd tools
check= chmod +x check.sh && bash check.sh
banner2= chmod +x banner.py && python3 banner.py
back_1= cd ..
remove
}
#Code :
debug() {
printf "\n"
printf "\033[0;32m┌─[\033[0;31mHorus\033[0;32m]──[\033[0;31m~\033[0;32m]─[\033[0;32mEye\033[0;32m]:\n" 
printf "\033[1;37m└───► Enter Payload : "
read payload
printf "\n" 
if [[ $payload == "" ]];then
printf "\n\033[0;32mInvailed Input ...Restart\n"
go3= bash Horus.sh
elif [[ $payload != "" ]];then
printf "\033[0;34m[#] Start Debuging ...\n"
printf "\033[1;37m\n"
apktool d $payload -o xline > /dev/null 2>&1;
sleep 5 
printf "\033[1;33mDone ..\n\n"
fi
}
scanner () {
#Scaning_Banner
titi_1= cd tools
scanner_banner= chmod +x scanning_banner.py && python3 scanning_banner.py
tit_2= cd .. 
firs= cd xline
#L3mon_Scanner
shitrat=$(grep '"com.example.dat.a8andoserverx"' AndroidManifest.xml)
if [[ $shitrat == "" ]];then
printf "\033[1;33m888RAT V1.1 \033[1;37m-->\033[0;31m NOT FOUND \n\n"
elif [[ $shitrat != "" ]];then
printf "\033[1;33m888RAT V1.1 \033[1;37m-->\033[0;32m FOUND\n\n"
fi
l3mon=$(grep '"com.etechd.l3mon"' AndroidManifest.xml)
if [[ $l3mon == "" ]];then
printf "\033[1;33mL3MON V1.1 \033[1;37m-->\033[0;31m NOT FOUND \n\n"
elif [[ $l3mon != "" ]];then
printf "\033[1;33mL3MON V1.1 \033[1;37m-->\033[0;32m FOUND\n\n"
fi
#AndroRat_Scanner
androrat=$(grep '"my.app.client"' AndroidManifest.xml)
if [[ $androrat == "" ]];then
printf "\033[1;33mANDRORAT V1.0 \033[1;37m-->\033[0;31m NOT FOUND \n\n"
elif [[ $androrat != "" ]];then
printf "\033[1;33mANDRORAT V1.0 \033[1;37m-->\033[0;32m FOUND\n\n"
fi
#Metasploit_Scanner
metasploit=$(grep '"MainBroadcastReceiver"' AndroidManifest.xml) 
if [[ $metasploit == "" ]];then
printf "\033[1;33mMETASPLOIT V5.0 \033[1;37m-->\033[0;31m NOT FOUND \n\n"
elif [[ $metasploit != "" ]];then
printf "\033[1;33mMETASPLOIT V5.0 \033[1;37m-->\033[0;32m FOUND\n\n"
fi
#droidjack_scanner
droid=$(grep '"net.droidjack.server"' AndroidManifest.xml)
if [[ $droid == "" ]];then
printf "\033[1;33mDROIDJACK V4.4 \033[1;37m-->\033[0;31m NOT FOUND \n\n"
elif [[ $droid != "" ]];then
printf "\033[1;33mDROIDJACK V4.4 \033[1;37m-->\033[0;32m FOUND \n\n"
fi
#ahm_scanner
ahm=$(grep '"ahmyth.mine.king.ahmyth.MainActivity"' AndroidManifest.xml)
if [[ $ahm == "" ]];then
printf "\033[1;33mAHMYTH V1.0 \033[1;37m-->\033[0;31m NOT FOUND \n\n"
elif [[ $ahm != "" ]];then
printf "\033[1;33mAHMYTH V1.0 \033[1;37m-->\033[0;32m FOUND \n\n"
fi
#SpynoteV.50
spynote5=$(grep '"yps.eton.application"' AndroidManifest.xml)
if [[ $spynote5 == "" ]];then
printf "\033[1;33mSPYNOTE V5.0 \033[1;37m-->\033[0;31m NOT FOUND \n\n"
elif [[ $spynote5 != "" ]];then
printf "\033[1;33mSPYNOTE V5.0 \033[1;37m-->\033[0;32m FOUND \n\n"
fi
#spymax2_scanner
spy2=$(grep '"package.name.suffix"' AndroidManifest.xml)
if [[ $spy2 == "" ]];then
printf "\033[1;33mSPYMAX V2.0 \033[1;37m-->\033[0;31m NOT FOUND \n\n"
elif [[ $spy2 != "" ]];then
printf "\033[1;33mSPYMAX V2.0 \033[1;37m-->\033[0;32m FOUND\n\n"
fi
#spymax_scanner
open= cd res/values/
spymax=$(grep '"a"' strings.xml)
if [[ $spymax == "" ]];then
printf "\033[1;33mSPYMAX V1.0 \033[1;37m-->\033[0;31m NOT FOUND \n\n"
elif [[ $spymax != "" ]];then
printf "\\033[1;33mSPYMAX V1.0 \033[1;37m-->\033[0;32m FOUND \n\n"
fi
#spynote_scanner
spynote=$(grep '"MER"' strings.xml)
if [[ $spynote == "" ]];then
printf "\033[1;33mSPYNOTE V6.4 \033[1;37m-->\033[0;31m NOT FOUND \n\n"
elif [[ $spynote != "" ]];then
printf "\033[1;33mSPYNOTE V6.4 \033[1;37m-->\033[0;32m FOUND \n\n"
fi
#mobihok_scanner
mobihok=$(grep '"abcd00"' strings.xml)
if [[ $mobihok == "" ]];then
printf "\033[1;33mMOBIHOK V6.0 \033[1;37m-->\033[0;31m NOT FOUND \n\n"
elif [[ $mobihok != "" ]];then
printf "\033[1;33mMOBIHOK V6.0\033[1;37m-->\033[0;32m FOUND \n\n"
fi
}
trap ctrl_c INT
ctrl_c() {
printf "\n\n[*] \033[0;31m(Ctrl + C ) Detected, \033[1;37mTrying To Exit... \n\n"
sleep 1
printf "[*] Thanks For Using HORUS-EYE :)\n\n"
exit
}
#Grep_info_function
ask() {
cd ../../..
psyco_1= cd tools
info_banner= chmod +x info_banner.py && python3 info_banner.py #Grep_Info_Banner
if [[ $spy2 != "" ]];then
chmod +x spy2.sh
bash spy2.sh
elif [[ $shitrat != "" ]];then
chmod +x 888.sh
bash 888.sh
elif [[ $l3mon != "" ]];then
chmod +x l3mon.sh
bash l3mon.sh #L3mon_Grep_Info
elif [[ $metasploit != "" ]];then
chmod +x meta.sh
bash meta.sh #Metasploit_Grep_Info
elif [[ $spymax != "" ]] || [[ $spynote != "" ]] || [[ $mobihok != "" ]] || [[ $spynote5 != "" ]];then
chmod +x spy.sh
bash spy.sh #Spynote_or_Spymax_or_Mobihok_Grep_Info
elif [[ $droid != "" ]];then
chmod +x droid.sh 
bash droid.sh #DroidJack_Grep_Info
elif [[ $ahm != "" ]];then
chmod +x ahmy.sh
bash ahmy.sh #AHMYTH_Grep_Info
elif [[ $androrat != "" ]];then
chmod +x andro.sh	
bash andro.sh
else
#If_Scanner_Don't_Detect_Anything
printf "\033[1;37mWe Are Sorry But \033[0;31mNothin Detected \033[1;37mTry : \033[1;33mManual Scan033[1;37m:(\n"
exit 0 
fi
}
#Grep_Ip_Info_Function
infocode () {
if [[ -e xline.log ]]; then
rm -rf xline.log
fi
printf "\033[0;32m┌─[\033[0;31mHorus\033[0;32m]──[\033[0;31m~\033[0;32m]─[\033[0;32mEye\033[0;32m]:\n" 
printf "\033[1;37m└───► Enter Ip Ex : "
read ip
info_banner= chmod +x ip_banner.py && python3 ip_banner.py #Grep_Ip_Info_Banner
sleep 2
printf "\n" 
iptracker=$(curl -s -L "www.ip-tracker.org/locator/ip-lookup.php?ip=$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > xline.log)
continent=$(grep -o 'Continent.*' xline.log | head -n1 | cut -d ">" -f3 | cut -d "<" -f1)
if [[ $continent != "" ]]; then
printf "\033[1;33mContinent : \033[0;32m FOUND : \033[1;37m ($continent)\n\n" 
elif [[ $continent == "" ]]; then
printf "\033[1;33mContinent : \033[0;31m NOT FOUND \n\n"
fi
hostnameip=$(grep  -o "</td></tr><tr><th>Hostname:.*" xline.log | cut -d "<" -f7 | cut -d ">" -f2)
if [[ $hostnameip != "" ]]; then
printf "\033[1;33mHostname :\033[0;32m FOUND : \033[1;37m ($hostnameip)\n\n" 
elif [[ $hostnameip == "" ]]; then 
printf "\033[1;33mHostname :\033[0;31m NOT FOUND\n\n"
fi 
reverse_dns=$(grep -a "</td></tr><tr><th>Hostname:.*" xline.log | cut -d "<" -f1)
if [[ $reverse_dns != "" ]]; then
printf "\033[1;33mReverse_Dns : \033[0;32m FOUND : \033[1;37m ($reverse_dns)\n\n" 
elif [[ $reverse_dns == "" ]]; then 
printf "\033[1;33mRerverse_Dns : \033[0;31m NOT FOUND\n\n"
fi 
country=$(grep -o 'Country:.*' xline.log | cut -d ">" -f3 | cut -d "&" -f1)
if [[ $country != "" ]]; then
printf "\033[1;33mCountry : \033[0;32m FOUND : \033[1;37m ($country)\n\n" 
elif [[ $country == "" ]] ; then 
printf "\033[1;33mCountry : \033[0;31m NOT FOUND\n\n"
fi 
state=$(grep -o "tracking lessimpt.*" xline.log | cut -d "<" -f1 | cut -d ">" -f2)
if [[ $state != "" ]]; then
printf "\033[1;33mState : \033[0;32m FOUND : \033[1;37m ($state)\n\n" 
elif [[ $state == "" ]];then
printf "\033[1;33mState : \033[0;31m NOT FOUND\n\n"
fi 
city=$(grep -o "City Location:.*" xline.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $city != "" ]]; then
printf "\033[1;33mCity : \033[0;32m FOUND : \033[1;37m ($city)\n\n" 
elif [[ $city == "" ]]; then
printf "\033[1;33mCity : \033[0;31m NOT FOUND\n\n"
fi 
isp=$(grep -o "ISP:.*" xline.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $isp != "" ]]; then
printf "\033[1;33mISP : \033[0;32m FOUND : \033[1;37m ($isp)\n\n" 
elif [[ $isp == "" ]]; then 
printf "\033[1;33mISP : \033[0;31m NOT FOUND\n\n"
fi 
as_number=$(grep -o "AS Number:.*" xline.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $as_number != "" ]]; then
printf "\033[1;33mAs_Number : \033[0;32m FOUND : \033[1;37m ($as_number)\n\n" 
elif [[ $as_number == "" ]];then
printf "\033[1;33mAs Number : \033[0;31m NOT FOUND\n\n"
fi 
ip_speed=$(grep -o "IP Address Speed:.*" xline.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_speed != "" ]]; then
printf "\033[1;33mIp_Speed : \033[0;32m FOUND : \033[1;37m ($ip_speed)\n\n" 
elif [[ $ip_speed == "" ]] ; then 
printf "\033[1;33mIp_Speed : \033[0;31m NOT FOUND\n\n"
fi
ip_currency=$(grep -o "IP Currency:.*" xline.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_currency != "" ]]; then
printf "\033[1;33mIp_Currency : \033[0;32m FOUND: \033[1;37m ($ip_currency)\n\n" 
elif [[ $ip_currency == "" ]]; then 
printf "\033[1;33mIp_Currency : \033[0;31m NOT FOUND\n\n"
fi 
#End_Grep_Ip_Info_Code
}
ipinfo() {
#Choose Host Or Ip
cd ..
ok_55= cd tools
revesehost= chmod +x reverse.py && python3 reverse.py
printf "\n"
infocode
sleep 5  
}
repet() {
printf "\033[0;32m┌─[\033[0;31mHorus\033[0;32m]──[\033[0;31m~\033[0;32m]─[\033[0;32mEye\033[0;32m]:\n" 
printf "\033[1;37m└───► Do You Have Another Payload !! [Y/N] : "
read have 
if [[ $have == "N" ]] || [[ $have == "n" ]] || [[ $have == "no" ]] || [[ $have == "No" ]];then
printf "\n\033[1;37mOk ! See You And Thanks For Using This Tool <3 \n\n"
elif [[ $have == "Y" ]] || [[ $have == "y" ]] || [[ $have == "YES" ]] || [[ $have == "yes" ]];then
printf "\n\033[1;37mOk .. Restart !!"
cd .. 
sleep 5
#Restart_Tool
rerun= chmod +x Horus.sh
reun= bash Horus.sh
else 
printf "\n\033[1;33mNo Option Are You Drinking \033[1;37m:(\n\n"
exit 0 
fi
}
#Remove_Scanning_File
remove(){
if [[ -e xline ]];then
rm -rf xline
fi
if [[ -e xline.log ]];then
rm -rf xline.log
fi
if [[ -e ok.dex ]];then
rm -rf ok.dex
fi
if [[ -e res ]];then
rm -rf res
fi
}
#Call_Fucntions
banner
debug
scanner
ask
ipinfo
remove
repet
#End_Of_Script
