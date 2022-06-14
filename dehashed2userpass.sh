#!/bin/bash
#first arg is the dehashed filename, second arg is the name of the mail domain
cat $1 | jq | grep -B 3 password | grep -v "ip_addres" | grep -v hashed_password | grep -v username | grep -v \"\" | grep -v \"$3\" | grep -B 1 password | sed 's/"email"://g' | sed 's/--//g' | sed -z 's/,\n//g' | sed 's/"password"//g' | sed 's/\"//g' | sed 's/ //g'
