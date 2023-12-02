#!/bin/bash

set +e
export HOST_IP=$(ipconfig getifaddr en0)
echo "프로젝트 클린 및 빌드 중..."
cur_dir=$(cd $(dirname -- "$0") && pwd)
cd ..
set -e
./gradlew :mvc:clean :mvc:build
set +e
echo "도커 컴포즈로 앱 시작 중..."
cd $cur_dir
docker compose down
docker rmi mvc-s02_mvc
docker compose up -d
echo "프로젝트 빌드 및 배포 완료."
