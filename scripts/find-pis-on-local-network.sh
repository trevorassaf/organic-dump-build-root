#!/bin/bash

ssid_info=$(sudo nmap -sS -p 22 192.168.1.0/24)
echo $ssid_info | sed "s/Nmap scan report for/\r\nNmap scan report for/g" | grep "Raspberry Pi Foundation"
