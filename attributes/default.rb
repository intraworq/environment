default['mysql']['version'] = '5.5'
default['mysql']['port'] = '3306'
default['mysql']['datadir'] = '/var/data'
default['mysql']['logdir'] = '/srv/log/mysql'
default['mysql']['root_password'] = '9zmhURN53Qbk'

default['database']['name'] = 'planq'
default['database']['user']['name'] = 'planq'
default['database']['user']['password'] = 'mswv56WfpzG6'

default['php']['ext_conf_dir'] = '/etc/php5/mods-available/'

default['apache']['docroot'] = '/srv/www'
default['apache']['log_dir'] = '/srv/log/apache2'
default['apache']['server_name'] = 'www.planq.vm'
default['apache']['server_alias'] = 'planq.vm'
default['apache']['server_admin'] = 'webmaster@planq.vm'
default['apache']['app']['name'] = 'planq'