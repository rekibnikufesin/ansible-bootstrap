# Ansible Bootstrap Template

This repo serves as a template to quickly bootstrap an ansible configuration for use with AWS. The goal of this repo is to allow us to get up and running with a sane ansible config using just this template and a python virtual environment.

## Installation/Configuration

1. Clone this repo
1. Update with your parameters (hint: look for `TODO:` comments in the files in this repo)
1. Create a python virtual environment
  1. Ensure you have python 3: `python -V`. If it returns `2.7`, try `python3 -V`. Please don't use Python 2 ☠️
  1. Create a new virtual environment using the python 3 executable found above: `python3 -m venv .env`
  1. Activate your new virtual environment: `source .env/bin/activate`
  1. Install the project dependencies: `pip install -r requirements.txt`
  1. Remember to deactivate your virtual environment when done: `deactivate`
1. Run ansible commands as desired (see [usage](#usage) for hints/examples)

## Usage

Ensure you are in your python virtual env (see above)

Try `ansible -i inventory/ec2.py all -m ping`

### Update user ssh keys on all AWS instances

Ensure the `group_vars/all/ssh_users.yml` file is up to date

Run with `ansible -i inventory update-users.yml`
