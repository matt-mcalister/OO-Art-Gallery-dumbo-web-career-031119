require_relative '../config/environment.rb'


daniel = Artist.new("Daniel", 13)
matt = Artist.new("matt", 13)
d_art = Gallery.new("d ArT", "nyc")
gr8_ruby = Painting.new("the gr88888 ruby", 1000, daniel, d_art)
new_mona_lisa = Painting.new("new mona lisa", 10, matt, d_art)


binding.pry

puts "Bob Ross rules."
