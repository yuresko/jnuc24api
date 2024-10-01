#!/bin/bash

response = $(curl -s -u '$username':'$password' https://jnuc24.jamfcloud.com/api/v1/auth/token -X POST | plutil -extract token raw - )
echo $response
