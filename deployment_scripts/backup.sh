#!/bin/bash 

TodayDate=$(date +%d-%m-%Y-%M-%S)

mkdir /opt/itrust_$TodayDate

#Backup database.yml and sidekiq.rb file

cp /opt/itrust/config/database.yml /opt/database.yml
cp /opt/itrust/config/initializers/sidekiq.rb /opt/sidekiq.rb
cp /opt/itrust/bin/rails-svc.sh /opt/rails-svc.sh

# Backup current deployment 
mv /opt/itrust/* /opt/itrust_$TodayDate/

rm -rf /opt/itrust/*

