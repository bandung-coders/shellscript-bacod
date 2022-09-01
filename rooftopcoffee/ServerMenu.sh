#!/usr/bin/env bash

## COLORS ##
ESC=$(printf '\033')
RESET="${ESC}[0m" BLACK="${ESC}[30m"
RED="${ESC}[31m"
GREEN="${ESC}[32m"
YELLOW="${ESC}[33m"
BLUE="${ESC}[34m"
MAGENTA="${ESC}[35m"
CYAN="${ESC}[36m"
WHITE="${ESC}[37m"
DEFAULT="${ESC}[39m"

mainmenu() {
clear
    echo "
${GREEN}
=====================
ROOFTOP COFFEE SERVER
=====================
${YELLOW}
Please choose which server to deploy
${CYAN}1)${WHITE} Backend
${CYAN}2)${WHITE} Frontend

${CYAN}0)${WHITE} Exit
${YELLOW}Choose an option:  ${CYAN}"
    read -r ans
    case $ans in
    1)
        backendMenu
        mainmenu
        ;;
    2)
        frontendMenu
        mainmenu
        ;;
    0)
        echo "${YELLOW}Thank you for using ${CYAN}resitdc ${YELLOW}toolkit"
        exit 0
        ;;
    *)
        echo "${RED}TOLOL ANJING, GA ADA PILIHAN ITU."
        exit 1
        ;;
    esac
}

backendMenu() {
    clear
    echo  "
${GREEN}
=====================
ROOFTOP COFFEE SERVER
=====================

${CYAN}=> Backend

${YELLOW}Please choose a Repository:  ${CYAN}
${CYAN}1)${WHITE} Office API
${CYAN}2)${WHITE} Public API
${CYAN}3)${WHITE} Socket

${CYAN}99)${WHITE} Back to Main Menu
${CYAN}0)${WHITE} Exit
${YELLOW}Choose an option:  ${CYAN}"
    read -r ans
    case $ans in
    1)
        sub-submenu
        backendMenu
        ;;
    2)
        menu
        backendMenu
        ;;
    3)
        menu
        backendMenu
        ;;
    99)
        mainmenu
        ;;
    0)
        echo "${YELLOW}Thank you for using ${CYAN}resitdc ${YELLOW}toolkit"
        exit 0
        ;;
    *)
        echo "${RED}TOLOL ANJING, GA ADA PILIHAN ITU."
        exit 1
        ;;
    esac
}


frontendMenu() {
    clear
    echo  "
${GREEN}
=====================
ROOFTOP COFFEE SERVER
=====================

${CYAN}=> Frontend

${YELLOW}Please choose a Repository:  ${CYAN}
${CYAN}1)${WHITE} Dashboard
${CYAN}2)${WHITE} Kitchen
${CYAN}3)${WHITE} Cashier
${CYAN}4)${WHITE} Menu

${CYAN}99)${WHITE} Back to Main Menu
${CYAN}0)${WHITE} Exit
${YELLOW}Choose an option:  ${CYAN}"
    read -r ans
    case $ans in
    1)
        sub-submenu
        frontendMenu
        ;;
    2)
        menu
        frontendMenu
        ;;
    3)
        menu
        frontendMenu
        ;;
    4)
        menu
        frontendMenu
        ;;
    99)
        mainmenu
        ;;
    0)
        echo "${YELLOW}Thank you for using ${CYAN}resitdc ${YELLOW}toolkit"
        exit 0
        ;;
    *)
        echo "${RED}TOLOL ANJING, GA ADA PILIHAN ITU."
        exit 1
        ;;
    esac
}

mainmenu