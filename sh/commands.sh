#!/bin/bash
yarn init -yarn
yarn add react react-dom 
#develop dependences
##babel
yarn add @babel/core @babel/cli @babel/preset-env  babel-loader @babel/preset-react -D

##webpack
yarn add webpack webpack-cli webpack-dev-server html-webpack-plugin webpack-dev-server -D
yarn add -D @pmmmwh/react-refresh-webpack-plugin react-refresh
###cssloader
yarn add webpack style-loader css-loader -D
###sass loader
yarn add node-sass sass-loader -D
##cross-env
yarn add cross-env -D




mkdir public
mkdir src
touch public/index.html
cp sh/index.html  public/index.html
cp sh/index.jsx src/index.jsx
cp sh/App.jsx src/App.jsx
cp sh/babel.config.js  babel.config.js


cp sh/webpack.config.js webpack.config.js

sed -i '$s/}/,\n"scripts":{\n    "dev":"webpack serve",\n    "build":"cross-env NODE_ENV=production webpack"\n}\n}/' package.json

mkdir src/styles
cp sh/global.scss /src/styles/global.scss
