#!/bin/bash

username=""
password=""
url="https://jnuc24.jamfcloud.com"

bearerToken=$(curl -s -u "$username":"$password" "$url"/api/v1/auth/token -X POST | plutil -extract token raw - )
echo $bearerToken

curl -s -H "Authorization: Bearer ${bearerToken}" $url/JSSResource/computers -X GET
