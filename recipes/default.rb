#
# Cookbook Name:: suricata
# Recipe:: default
#
# Copyright (C) 2013 Andrew Fecheyr
# 
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
# 
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

include_recipe "apt"

directory node['suricata']['rules_path']
directory node['suricata']['log_dir']

include_recipe "suricata::pulledpork"

apt_repository "suricata-#{node['suricata']['ppa']}" do
  uri          "http://ppa.launchpad.net/oisf/suricata-#{node['suricata']['ppa']}/ubuntu"
  distribution node['lsb']['codename']
  components   ['main']
  keyserver    'keyserver.ubuntu.com'
  key          '66EB736F'
end

package "suricata"

template node['suricata']['config_file'] do
  source "suricata.yaml.erb"
end

template "/etc/init/suricata.conf" do
  source "suricata.upstart.erb"
end

service "suricata" do
  provider Chef::Provider::Service::Upstart
  action :start
end
