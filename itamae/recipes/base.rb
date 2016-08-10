# frozen_string_literal: true

%w(yum_update packages ruby redis postgres).each do |resource|
  include_recipe "./#{resource}.rb"
end
