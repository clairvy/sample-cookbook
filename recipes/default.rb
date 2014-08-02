#
# Cookbook Name:: sample-erlang
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

url = "http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_1_general/esl-erlang_17.1-1~centos~6_amd64.rpm"
filename = "/usr/local/rpms/#{File.basename url}"
dirname = File.dirname filename
basename = File.basename filename

directory dirname do
end

remote_file filename do
  source url
end

yum_package basename do
  source filename
end
