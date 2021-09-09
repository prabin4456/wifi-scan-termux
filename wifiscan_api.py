import os
r='\033[1;31m'
s='\033[0m'
g='\033[1;32m'
y='\033[1;33m'
b='\033[1;34m'
cyan='\033[1;36m'
p='\033[1;35m'

os.system("termux-brightness 50")
os.system("termux-volume music 100")
os.system("termux-tts-speak -p 1 -r 0.6 welcome sir. choose any option")
print("")
print(f"                {r}PRABIN")
print(f"                                        {b}WIFI")
print(f"                {s}NEPAL")
print(f"                                        {y}NEPAL")
print(f"                {p}NEPAL")
print("")
print(f"   {g}  ANDRO_INFORMER")
print("")
print(f"{r}1.{p}wifi-info")
print(f"{r}2.{g}current-wifi-info")
print(f"{r}3.{b}wifi")
print(f"{r}4.{y}WPS-push-botton")
print("")
b=int(input(f"{g}==={s}>{y} "))
if b==1:
    os.system("termux-wifi-scaninfo")
if b==2:
    os.system("termux-wifi-connectioninfo")
if b==3:
    print("1.wifi-on")
    print("2.wifi-off")
    d=input("==> ")
    if d==1:
        os.system("termux-wifi-enable true")
    if d==2:
        os.system("termux-wifi-enable false")
if b==4:
        os.system("WPS-push-botton")
os.system(" cd")
os.system("cd /data/data/com.termux/files/home/andro_informer")
os.system("python ai.py")
