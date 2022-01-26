#!/bin/bash
mkdir projeto_12_API_Batepapo_UOL  &&
cd projeto_12_API_Batepapo_UOL &&
git init &&
npm init -y &&
npm i -D nodemon &&
npm i express &&
npm i mongodb &&
npm i cores &&
npm i dotenv &&
touch .gitignore &&
echo '/node_modules' >> .gitignore &&
touch .env &&
echo '.env' >> .gitignore &&
touch index.js &&
code .
#&& exit 1 não consigo fazer o terminal fechar