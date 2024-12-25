docker build -t faqihfadholi/calculator-web:latest .

docker volume create calculator-data

docker run -d --name calculator-container -p 8080:8080 dentowahyu/saklarjs:latest

docker ps

docker logs calculator-container

docker stop calculator-container

docker start calculator-container