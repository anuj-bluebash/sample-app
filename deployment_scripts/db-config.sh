#!/bin/bash 

chown -R itrust.itrust /opt/itrust/

cd /opt/itrust/

su - itrust -c "RAILS_ENV=$RAILS_ENV  rake db:migrate"
su - itrust -c "RAILS_ENV=$RAILS_ENV  rake assets:precompile"

