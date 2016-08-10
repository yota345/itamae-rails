# frozen_string_literal: true

execute "yum clean all" do
  command "yum clean all"
  user "root"
end

execute "yum update" do
  command "yum update -y"
  user "root"
end
