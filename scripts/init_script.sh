#!/bin/bash
bundle install
bundle exec rake db:drop db:create db:migrate
rails server