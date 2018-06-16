#!/usr/bin/sh
# lxss的安装脚本，需要配置django的secret_key，登陆密码，部署的 url:port，更改 data 目录的读写权限
# 把 backend/static/login 复制到 frontend/static/ 中，因为如果用 nginx 反代理静态文件只能选择一个目录

chmod -R 777 backend/data/
chmod -R 777 frontend/dist/static

cp -r backend/static/login frontend/dist/static/
cp -r backend/static/cheatsheet frontend/dist/static/
cp -r backend/static/templates frontend/dist/static/