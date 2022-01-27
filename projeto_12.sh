#!/bin/bash
SEARCH='exit 1'
REPLACE='exit 1",\n\t\t"start": "npx nodemon index.js'
PROJECT='projeto_12_API_Batepapo_UOL'

mkdir $PROJECT
cd projeto_12_API_Batepapo_UOL

git init &&
npm init -y &&
npm i -D nodemon &&
npm i express &&
npm i mongodb &&
npm i cors &&
npm i dotenv &&
touch .gitignore &&
echo '/node_modules' >> .gitignore &&
touch .env &&
echo '.env' >> .gitignore &&
touch index.js &&
sed -i "s/$SEARCH/$REPLACE/" package.json
code .
#&& exit 1 não consigo fazer o terminal fechar