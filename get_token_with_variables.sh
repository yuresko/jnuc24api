#!/bin/bash

username=""
password=""
url="https://jnuc24.jamfcloud.com"

response=$(curl -s -u "$username":"$password" "$url"/api/v1/auth/token -X POST | plutil -extract token raw - )
echo $response
