#!/bin/bash
bundle install
rails db:setup db:migrate
rails server