#!/bin/bash
sudo \i create_database.sql
bundle install
rails db:setup db:migrate
rails server