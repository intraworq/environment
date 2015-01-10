include_recipe 'apt'

apt_repository "php56" do
	uri "http://packages.dotdeb.org"
	components ["wheezy-php56", "all"]
	key "dotdeb.gpg"
end

