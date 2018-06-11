#!/bin/bash

sudo helm init --upgrade
sleep 90
sudo helm version
echo "Starting helm server"
sudo helm serve &
sudo helm repo add local http://127.0.0.1:8879
sudo helm repo list
