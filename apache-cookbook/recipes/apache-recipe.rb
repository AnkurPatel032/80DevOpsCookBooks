#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.


package 'httpd' do
    action :install
end

file '/var/www/html/index.html' do
    content '<h1>Hello Megha!!Hope U r enjoying Frinedship with him</h1>'
    action :create
end

service 'httpd' do 
    action [:enable,:start]
end
