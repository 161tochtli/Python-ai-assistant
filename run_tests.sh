#!/usr/bin/env bash
# --------------------------------
# Activate Python virtual env
# --------------------------------
export PYTHONPATH="${PYTHONPATH}:./src/jarvis"
source jarvis_virtualenv/bin/activate

# --------------------------------
# Start MongoDB service
# --------------------------------
sudo systemctl start mongod

# --------------------------------
# Run unittests
# --------------------------------
python -m unittest discover -s ./src -p "*tests.py"
exit_code=($?)

# --------------------------------
# Stop MongoDB service
# --------------------------------
sudo systemctl stop mongod

exit $exit_code
