# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



def create_color
  hex_values = %w(a b c d e f 1 2 3 4 5 6 7 8 9)
  s = ""
  1.upto(6) { s += hex_values.sample }
  return s
end

1.upto(3) do |c|
  color = Color.new
  new_color = create_color()
  color.value = "#" + new_color.to_s
  color.save
end
