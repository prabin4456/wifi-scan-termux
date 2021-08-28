#colours
red='\e[0;31m'
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
clear
banner() {
echo -en $txtpur '
m     m        mmmmm         mmmmmm        mmmmm
#  #  #          #           #               #
# #"# #          #           #mmmmm          #
 ## ##"          #           #               #
 #   #         mm#mm         #             mm#mm
'
}
banner
line() {
echo -en $txtylw '
[ 1° wifi-connectioninfo ]
[ 2° wifi-enable         ]
[ 3° wifi-scaninfo       ]
[ U° update		 ]
[ A° about       	 ]
'
}
line
read -p "enter : " data
case $data in
1)
  echo -en $txtblu "start ....  ✓\n "
  sleep 1
  termux-wifi-connectioninfo
;;
2)
  echo -en $txtcyn " wifi-enable  ✓ "
  read -p " wi-fi  [true | false] " userdata
  termux-wifi-enable $userdata
;;
3)
 echo -en $txtgrn " wifi-scaninfo  √ \n"
 termux-wifi-scaninfo
;;
U*)
  echo -en $txtred " update  √ \n "
  cd /$HOME/
  rm -rf wifi-ctrl
  git clone https://girhub.com/MrZANTI-X/wifi-ctrl.git
;;
A*)
  echo -en $txtcyn " about  √ \n"
  termux-open-url https://youtube.com/channel/UCFm8ZvT8ZZ6RpqpWKRy9ZMg
;;
esac
