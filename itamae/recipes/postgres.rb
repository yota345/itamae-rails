# frozen_string_literal: true

postgresql_url = "http://yum.postgresql.org/9.4/redhat/rhel-6-x86_64/pgdg-centos94-9.4-2.noarch.rpm"

execute "install postgres package" do
  command "yum -y localinstall #{postgresql_url}"
end

%w(postgresql94-devel postgresql94-server postgresql-devel).each do |pkg|
  package pkg do
    action :install
  end
end

execute "initialize db" do
  command "service postgresql-9.4 initdb"
end

service "postgresql-9.4" do
  action %i(enable start)
end

execute "setting postgresql's user and password" do
  command <<-EOL
    sudo -u postgres psql -c "create user #{node['postgres']['user']}"
    sudo -u postgres psql -c "alter role #{node['postgres']['user']} with createdb"
  EOL
end
