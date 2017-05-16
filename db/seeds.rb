
Engine.destroy_all
Shop.destroy_all
User.destroy_all
Category.destroy_all

categories = [
  {
    name: "e-Skateboard"
    photo: "eskate.png"
  }
  {
    name: "e-Bike"
    photo: "ebike.jpg"
  }
  {
    name: "Hoverboard"
    photo: "hoverboard.png"
  }
  {
    name: "e-Scooter"
    photo: "trotinette.jpeg"
  }
  {
    name: "Segway"
    photo: "segway.png"
  }
  {
    name: "e-Motobike"
    photo: "emoto.jpg"
  }
]

categories.each do |category|
  Category.create!(name: category)
  print "."
end

30.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end

10.times do
  shop = Shop.create!(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    telephone: Faker::PhoneNumber
    )
end

40.times do
  engine = Engine.create!(
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence(3),
    price: (10..50).to_a.sample,
    category: Category.all.sample,
    shop: Shop.all.sample
    )
end

