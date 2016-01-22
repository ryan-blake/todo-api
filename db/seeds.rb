5.times do
  user = User.new(
  email: Faker::Internet.email,
  full_name:  Faker::Name.name
  )

  user.save!
end

users = User.all


10.times do
  List.create!(
  name:  Faker::Hipster.word,
  user: users.sample
  )

end

lists = List.all

5.times do
  Item.create!(
  name:  Faker::Hipster.word,
  list: lists.sample
  )

end
items = Item.all

puts "Seeds finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
puts "#{List.count} lists created"
