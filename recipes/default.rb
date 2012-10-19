#
# Cookbook Name:: cloudfoundry-health_manager
# Recipe:: default
#
# Copyright 2012, Trotter Cashion
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

ruby_path    = File.join(rbenv_root, "versions", node['cloudfoundry_common']['ruby_1_9_2_version'], "bin")
install_path = File.join(node['cloudfoundry_common']['vcap']['install_path'], "cloud_controller", "health_manager")

cloudfoundry_component "health_manager" do
  binary "#{File.join(ruby_path, 'ruby')} #{File.join(install_path, "bin", "health_manager")}"
  install_path install_path
end
