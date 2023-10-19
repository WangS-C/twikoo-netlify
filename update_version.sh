#!/bin/bash

response=$(curl -s https://api.github.com/repos/twikoojs/twikoo/releases/latest)
version=$(echo $response | jq -r '.tag_name')
sed -i "s/\"twikoo-netlify\": \".*\"/\"twikoo-netlify\": \"$version\"/" package.json
