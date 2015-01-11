# include_recipe 'database'
# include_recipe 'database::mysql'

mysql_chef_gem 'default' do
  action :install
end

directory node['mysql']['datadir'] do
  owner 'mysql'
  group 'mysql'
  mode '0644'
  action :create
end

directory node['mysql']['logdir'] do
  owner 'mysql'
  group 'mysql'
  mode '0644'
  action :create
end

mysql_service 'default' do
  port node['mysql']['port']
  bind_address '0.0.0.0'
  version node['mysql']['version']
  charset 'utf8'
  data_dir node['mysql']['datadir']
  initial_root_password node['mysql']['root_password']
  action [:create, :start]
end

mysql_connection_info = {
  :host     => '127.0.0.1',
  :username => 'root',
  :password => node['mysql']['root_password']
}

mysql_database 'default' do
  database_name node['database']['name']
  connection mysql_connection_info
  action :create
end


mysql_database_user node['database']['user']['name'] do
  connection mysql_connection_info
  password node['database']['user']['password']
  database_name node['database']['name']
  host '%'
  privileges [:select,:update,:insert]
  require_ssl false
  action :grant
end