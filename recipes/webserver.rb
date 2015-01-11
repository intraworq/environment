include_recipe 'php'
include_recipe "php::module_mysql"
include_recipe "php::module_curl"
include_recipe "php::module_sqlite3"
include_recipe "php::module_ldap"
include_recipe 'apache2'
include_recipe "apache2::mod_php5"
include_recipe "xdebug"

directory node['apache']['log_dir'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  action :create
end

apache_site "default" do
  enable false
end

web_app "planq" do
	template 'planq.conf.erb'
end