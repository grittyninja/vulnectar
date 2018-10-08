#!/bin/bash

echo "Build and Run LPE02 ..."
cd lpe02/
sudo docker build -t lpe02 .
sudo docker run --privileged --restart always -p 2202:5000 --hostname lpe02 -itd lpe02

echo "Build and Run LPE03 ..."
cd ../lpe03/
sudo docker build -t lpe03 .
sudo docker run --restart always -p 2203:5000 --hostname lpe03 -itd lpe03

echo "Build and Run LPE04 ..."
cd ../lpe04/
sudo docker build -t lpe04 .
sudo docker run --restart always -p 2204:5000 --hostname lpe04 -itd lpe04

echo "Build and Run LPE05 ..."
cd ../lpe05/
sudo docker build -t lpe05 .
sudo docker run --privileged --restart always -p 2205:5000 --hostname lpe05 -itd lpe05

echo "Build and Run LPE06 ..."
cd ../lpe06/
sudo docker build -t lpe06 .
sudo docker run --restart always -p 2206:5000 --hostname lpe06 -itd lpe06

echo "Build and Run LPE07 ..."
cd ../lpe07/
sudo docker build -t lpe07 .
sudo docker run --restart always -p 2207:5000 --hostname lpe07 -itd lpe07