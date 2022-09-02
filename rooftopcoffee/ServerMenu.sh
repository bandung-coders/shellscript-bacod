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
        beOfficeApi
        ;;
    2)
        bePublicApi
        ;;
    3)
        beSocket
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
        feDashboard
        ;;
    2)
        feKitchen
        ;;
    3)
        feCashier
        ;;
    4)
        feMenu
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


beOfficeApi() {
    echo "${CYAN}Deploying ( Backend - Office Api )"

    source /home/dieunika/nodevenv/sampaimasukangin/backend/office-api/14/bin/activate && cd /home/dieunika/sampaimasukangin/backend/office-api

    git pull origin production

    npx npm install

    npx pm2 list

    npx pm2 restart backend-office-api

    npx pm2 save --force

    npx pm2 list
}

bePublicApi() {
    echo "${CYAN}Deploying ( Backend - Public Api )"

    source /home/dieunika/nodevenv/sampaimasukangin/backend/public-api/14/bin/activate && cd /home/dieunika/sampaimasukangin/backend/public-api

    git pull origin production

    npx npm install

    npx pm2 list

    npx pm2 restart backend-public-api

    npx pm2 save --force

    npx pm2 list
}

beSocket() {
    echo "${CYAN}Deploying ( Backend - Socket )"

    source /home/dieunika/nodevenv/sampaimasukangin/backend/socket/14/bin/activate && cd /home/dieunika/sampaimasukangin/backend/socket

    git pull origin production

    npx npm install

    npx pm2 list

    npx pm2 restart backend-socket

    npx pm2 save --force

    npx pm2 list
}

feDashboard() {
    echo "${CYAN}Deploying ( Frontend - Dashboard )"

    source /home/dieunika/nodevenv/sampaimasukangin/frontend/dashboard/14/bin/activate && cd /home/dieunika/sampaimasukangin/frontend/dashboard

    git pull origin production

    npx npm install

    npx pm2 list

    npx npm run build

    npx pm2 restart frontend-dashboard

    npx pm2 save

    npx pm2 save --force

    npx pm2 list
}

feCashier() {
    echo "${CYAN}Deploying ( Frontend - Cashier )"

    source /home/dieunika/nodevenv/sampaimasukangin/frontend/cashier/14/bin/activate && cd /home/dieunika/sampaimasukangin/frontend/cashier

    git pull origin production

    npx npm install

    npx pm2 list

    npx npm run build

    npx pm2 restart frontend-cashier

    npx pm2 save

    npx pm2 save --force

    npx pm2 list
}

feKitchen() {
    echo "${CYAN}Deploying ( Frontend - Kitchen )"

    source /home/dieunika/nodevenv/sampaimasukangin/frontend/kitchen/14/bin/activate && cd /home/dieunika/sampaimasukangin/frontend/kitchen

    git pull origin production

    npx npm install

    npx pm2 list

    npx npm run build

    npx pm2 restart frontend-kitchen

    npx pm2 save

    npx pm2 save --force

    npx pm2 list
}

feMenu() {
    echo "${CYAN}Deploying ( Frontend - Menu )"

    source /home/dieunika/nodevenv/sampaimasukangin/frontend/menu/14/bin/activate && cd /home/dieunika/sampaimasukangin/frontend/menu

    git pull origin production

    npx npm install

    npx pm2 list

    npx npm run build

    npx pm2 restart frontend-menu

    npx pm2 save

    npx pm2 save --force

    npx pm2 list
}

mainmenu