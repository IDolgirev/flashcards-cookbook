#
# Cookbook Name:: flashcards-cookbook
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apt"
include_recipe "build-essential"
include_recipe "git::default"
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_execute "rehash" do
  command "rbenv rehash"
end

rbenv_ruby "2.2.3" do
  ruby_version "2.2.3"
  global true
end