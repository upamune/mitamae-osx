node[:apps].each do |app|
  execute "install #{app}" do
    command "brew cask install #{app} --appdir=\"/Applications\""
    not_if "brew cask list | grep -q #{app}"
  end
end
