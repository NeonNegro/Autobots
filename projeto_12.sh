#!/bin/bash
SEARCH='exit 1'
REPLACE='exit 1",\n\t\t"start": "npx nodemon index.js'
PROJECT='projeto_12_API_Batepapo_UOL'

mkdir $PROJECT
cd $PROJECT

git init &&
npm init -y &&
npm i -D nodemon &&
npm i express &&
npm i mongodb &&
npm i cors &&
npm i joy &&
npm i dotenv &&
touch .gitignore
touch .env
touch index.js
echo '/node_modules' >> .gitignore &&
echo '/assets' >> .gitignore &&
echo 'index.html' >> .gitignore &&
echo 'instructions.sh' >> .gitignore &&
echo '.env' >> .gitignore &&
sed -i "s/$SEARCH/$REPLACE/" package.json
sed -i '/\"main\": \"index.js\",/a\\t\"type\": \"module\",' package.json
code .
#&& exit 1 não consigo fazer o terminal fechar
