# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# u = User.new
# u.email = "myohmy10420@gmail.com"

# u.password = "111111"

# u.password_confirmation = "111111"

# u.is_admin = true
# u.save

creator_id = User.find_by(email: "myohmy10420@gmail.com").try(:id) || 1

Product.create!(
  title: "Macbook pro",
  description: "蘋果筆電",
  quantity: 2,
  price: 32000,
  image: open("https://i.guim.co.uk/img/media/4371417c1b5e8fab6bb9f05904d260d40dc18f82/133_0_4175_2505/master/4175.jpg?w=1920&q=55&auto=format&usm=12&fit=max&s=191e5d87d7c6fce47bb31e7bcc9ad5cd")
)

puts "Added Macbook pro"
