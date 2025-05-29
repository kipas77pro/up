#!/bin/bash

NC='\033[0;37m'
BICyan='\033[0;34m'
ICyan='\033[0;36m'  
RED='\033[0;31m'
GREEN='\033[0;32m'
green='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
NC='\033[0;37m'
KN='\033[1;33m'
ORANGE='\033[0;33m'
PINK='\033[0;35m'

clear
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10)
# TOTAL RAM
#total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
#totalram=$(($total_ram/1024))
tram=$( free -m | awk 'NR==2 {print $2}' )
uram=$( free -m | awk 'NR==2 {print $3}' )
#CITY=$(curl -s ipinfo.io/city)
#IPVPS=$(curl -s ipinfo.io/ip)
IPVPS=$(curl -sS ifconfig.me)
#RAM=$(free -m | awk 'NR==2 {print $2}')
#USAGERAM=$(free -m | awk 'NR==2 {print $3}')
MEMOFREE=$(printf '%-1s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")
LOADCPU=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
MODEL=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
DATEVPS=$(date +'%d/%m/%Y')
TIMEZONE=$(printf '%(%H:%M:%S)T')
clear
clear
clear
echo -e ""
echo -e "\E[44;1;39m ꧁࿇ SCRIPT SEDERHANA PENUH CINTA ࿇꧂ \E[0m"
echo -e ""
echo -e "${BICyan} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${BICyan} │$NC\033[42m                   SYSTEM INFORMATION                ${BICyan}│${NC} "
echo -e "${BICyan} │ "
echo -e " ${BICyan}│  ${ICyan} Hostname     : ${NC}$HOSTNAME "
echo -e " ${BICyan}│  ${ICyan} Public IP    : ${NC}$IPVPS ${NC} "
echo -e " ${BICyan}│  ${ICyan} Domain       : ${NC}$(cat /etc/xray/domain) "
echo -e " ${BICyan}│  ${ICyan} ISP          : ${NC}$ISP "
echo -e " ${BICyan}│  ${ICyan} Total RAM    : ${NC}$uram / $tram MB ${NC}"
echo -e " ${BICyan}│  ${ICyan} Usage Memory :${NC} $MEMOFREE "
echo -e " ${BICyan}│  ${ICyan} LoadCPU      : ${NC}$LOADCPU% "
echo -e " ${BICyan}│  ${ICyan} Core System  : ${NC}$CORE "
echo -e " ${BICyan}│  ${ICyan} System OS    : ${NC}$MODEL "
echo -e " ${BICyan}│  ${ICyan} Date         : ${NC}$DATEVPS "
echo -e " ${BICyan}│  ${ICyan} Time         : ${NC}$TIMEZONE "
echo -e " ${BICyan}└─────────────────────────────────────────────────────┘${NC}"
echo -e " ${BICyan}╭═════════════════════════════════════════════════════╮${NC}"
echo -e "${BICyan} │                    ${NC}SSH     ${ICyan}: ${ORANGE}$ssh1      ${NC} "
echo -e " ${BICyan}╰═════════════════════════════════════════════════════╯${NC}"
echo -e "$BICyan   ┌─────────────────────────────────────────────────┐${NC}"
echo -e "$BICyan   │$NC\033[42m                    INFO MENU                    $BICyan│$NC"
echo -e "$BICyan   └─────────────────────────────────────────────────┘${NC}"
echo -e " ${BICyan}╭═════════════════════════════════════════════════════╮${NC}"
echo -e "${BICyan} │    ${ICyan}[${ORANGE}01${ICyan}]${NC} • SSH/WS     "   "${BICyan}       │${ICyan}[${ORANGE}10${ICyan}]${NC} • INFO PORT${BICyan}      │${NC}   "
echo -e "${BICyan} │    ${ICyan}[${ORANGE}02${ICyan}]${NC} • CEK TRAFIK      "  "${BICyan}  │${ICyan}[${ORANGE}11${ICyan}]${NC} • REBOOT         ${BICyan}│${NC}"
echo -e "${BICyan} │    ${ICyan}[${ORANGE}03${ICyan}]${NC} • MONITOR BANWIDTH  " "${BICyan}│${ICyan}[${ORANGE}12${ICyan}]${NC} • CEKS SPEDD${BICyan}     │  ${NC} "
echo -e "${BICyan} │    ${ICyan}[${ORANGE}04${ICyan}]${NC} • RESTART ALL SERVICE""${BICyan}│${ICyan}[${ORANGE}13${ICyan}] ${NC}• CHANGE BANNER${BICyan}  │ ${NC}      "
echo -e "${BICyan} │    ${ICyan}[${ORANGE}05${ICyan}]${NC} • ADD SUBDOMAIN     "     "${BICyan}│${ICyan}[${ORANGE}14${ICyan}]${NC} • RESTART BANNER${BICyan} │${NC}"
echo -e "${BICyan} │    ${ICyan}[${ORANGE}06${ICyan}]${NC} • RENEW CERTY2RAY  ""  ${BICyan}│${ICyan}[${ORANGE}15${ICyan}]${NC} • SET AUTOREBOOT ${BICyan}│${NC}"
echo -e "${BICyan} │    ${ICyan}[${ORANGE}07${ICyan}]${NC} • CLEAR LOG VPS   "      "${BICyan}  │${ICyan}[${ORANGE}16${ICyan}]${NC} • UPDATE MENU  ${BICyan}  │${NC}"
echo -e "${BICyan} │    ${ICyan}[${ORANGE}08${ICyan}]${NC} • TENDANG USER MULTI"  "${BICyan}│${ICyan}[${ORANGE}17${ICyan}]${NC} • INSTALL UDP  ${BICyan}  │${NC}"
echo -e "${BICyan} │    ${ICyan}[${ORANGE}09${ICyan}]${NC} • RUNNING  "  "${BICyan}         │${ICyan}[${ORANGE}18${ICyan}]${NC} • BACKUP  ${BICyan}       │${NC}"
echo -e " ${BICyan}╰═════════════════════════════════════════════════════╯${NC}"
echo -e "${BICyan} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${GREEN}  ${RED}▁ ${CYAN}▂ ${GREEN}▄ ${ORANGE}▅${PINK} ▆${GREEN} ▇ ${RED}█${BLUE}𒆜${CYAN} ༻${NC}  SCRIPT ARYA BLITAR ${BLUE}༺ ${RED}𒆜${GREEN}█ ${ORANGE}▇ ${CYAN}▆ ${RED}▅ ${GREEN}▄ ${ORANGE}▂ ${PINK}▁\E[0m"
echo -e "${BICyan} └─────────────────────────────────────────────────────┘${NC}"
echo -e ""
echo -e " ${BICyan}┌─────────────────────────────────────────────────────┐${NC}"
echo -e " ${BICyan}│ ${ORANGE} Version       : ${NC} GRATIS ${NC}"
echo -e " ${BICyan}└─────────────────────────────────────────────────────┘${NC}"
echo
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; ssh ;;
2) clear ; gotop ;;
3) clear ; banwit ;;
4) clear ; restart ;;
5) clear ; addhost ;;
6) clear ; certv2ray ;;
7) clear ; clearlog ;;
8) clear ; tendang ;;
9) clear ; running ;;
10) clear ; info ;;
11) clear ; reboot ;;
12) clear ; speedtest ;;
13) clear ; nano /etc/issue.net ;;
14) clear ; /etc/init.d/dropbear restart ;;
15) clear ; auto-reboot ;;
16) clear ; updatemenu ;;
17) clear ; udepe ;;
18) clear ; menu-backup ;;
0) clear ; menu ;;
*) echo -e "" ; echo "Press any key to back exit" ; sleep 1 ; exit ;;
esac
