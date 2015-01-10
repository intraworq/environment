#
# Cookbook Name:: planq
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#


include_recipe 'planq::repositories'
include_recipe 'planq::database'
include_recipe 'planq::webserver'
