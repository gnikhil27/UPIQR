#!/bin/bash
# author Nikhil Gupta<Nik'N' Nitro>
#
#Will Modify for better reuse
if [ -f /usr/bin/qrencode ];then
    echo -n "Enter UPI ID: ";
    read id;
    echo -n "Enter Name: ";
    read name;
    echo -n "Message: "
    read message
    echo -n "Advance options [y/n]: "
    read op;
    if [ $op == "y" ];then
        echo "Will update this part soon";
        echo "Need to add";
        echo "--------------------------";
        echo "1. Color of QR";
        echo "2. Size of QR";
        echo "3. Image Format"
        echo "--------------------------";
        echo -e "\033[0;31m Currently Not supported";
    else
        echo "Making qr code...";
        uri="upi://pay?pa=";
        uri+=$id;
        uri+="&cu=inr&pn="
        uri+=$name;
        uri+="&tn="
        uri+=$message
        qrencode -o myqr.png $uri;
        echo -e "\033[0;32m Success...";
        echo "File myqr.png Created..."
    fi
else
    echo "Please install QR Encoder";
    echo "-----------try-----------";
    echo "sudo apt install libqrencode";
    echo "sudo apt install qrencode";
    echo "on Ubuntu or Kali Linus";
fi