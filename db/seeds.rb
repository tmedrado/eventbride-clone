require 'faker'

50.times do
  first_name = Faker::Name.first_name  
  last_name = Faker::Name.last_name   
  email = first_name + "@yopmail.com"

  User.create(first_name:first_name, last_name:last_name,email:email)

end
puts "I`ve created them all!"