#!/bin/python3
import requests
def version():
	r = requests.get("https://raw.githubusercontent.com/Djawed-Hammadi/Horus-Eye/main/tools/version.txt")
	response = r.text
	if response == "2.2":
    		print("\n\033[0;32m[ ✔ ] Latest Version .............[ \033[1;33mFound \033[0;32m]\n\n")
	else:
    		print("\n\033[0;32m[#]\033[1;37m New Update Detcted Please \033[0;31mUpdate This Tool\n")
version()
