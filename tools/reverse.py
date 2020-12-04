#!/bin/python3 
#Coded By Djawed Hammadi
#FACEBOOK:www.facebook.com/djawedx23
#Copyright@2020
from time import sleep 
from socket import gethostbyname
def reverse():
	print("\033[0;32m┌─[\033[0;31mHorus\033[0;32m]──[\033[0;31m~\033[0;32m]─[\033[0;32mEye\033[0;32m]:")
	host = input("\033[1;37m└───► Enter Host : ")
	sleep(5)
	print("\n" + " Ip For",host," Is : \033[1;33m",gethostbyname(host))
reverse()

