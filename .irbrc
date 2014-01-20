%w[pry pry-theme].each do |gem|
  gem = Gem::Specification.find_by_name(gem)
  gem.add_self_to_load_path
  require gem.name
end

Pry.start

exit
