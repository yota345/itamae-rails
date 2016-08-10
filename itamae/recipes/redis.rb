# frozen_string_literal: true

execute "install redis 2.8 over" do
  command <<-EOL
    rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
    rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
    rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
    yum --enablerepo=remi,remi-test,epel install redis -y
    /etc/init.d/redis start
    chkconfig redis on
  EOL
end
