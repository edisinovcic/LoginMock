#!/bin/bash
bundle install
bundle exec rake db:create db:migrate
rails server