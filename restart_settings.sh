#!/usr/bin/env bash
# --------------------------------
# Start MongoDB service
# --------------------------------
sudo systemctl start mongod

# --------------------------------
# Delete general_settings to reset
# to DEFAULT_GENERAL_SETTINGS 
# --------------------------------
mongosh --file "delete_settings.js"

#TODO: only change or reset selected configurations

# --------------------------------
# Stop MongoDB service
# --------------------------------
sudo systemctl stop mongod
