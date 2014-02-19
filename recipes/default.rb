# encoding: utf-8
#
# Cookbook Name:: proftpd
# Recipe:: default
#
# Copyright (C) 2014, Darron Froese <darron@froese.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package 'proftpd'

service 'proftpd' do
  action [:enable, :start]
end

cookbook_file '/etc/proftpd/proftpd.conf' do
  action :create
  user 'root'
  group 'root'
  mode 0644
  notifies :restart, 'service[proftpd]'
end
