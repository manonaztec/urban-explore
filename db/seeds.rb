print "On commence le Seed"

Engine.destroy_all
Shop.destroy_all
User.destroy_all
Category.destroy_all

categories = [
  {
    name: "e-Skateboard",
    photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495012326/trotinette_lm2cdx.jpg"
  },
  {
    name: "e-Bike",
    photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495012326/trotinette_lm2cdx.jpg"
  },
  {
    name: "Hoverboard",
    photo_url:"http://res.cloudinary.com/dcsrdzgza/image/upload/v1495012326/trotinette_lm2cdx.jpg"
  },
  {
    name: "e-Scooter",
    photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495012326/trotinette_lm2cdx.jpg"
  },
  {
    name: "Segway",
    photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495012326/trotinette_lm2cdx.jpg"
  },
  {
    name: "e-Motobike",
    photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495012326/trotinette_lm2cdx.jpg"
  }
]

# categories.each do |category|
#   Category.create!(name: category)

# end

Category.create!(name: "e-Skateboard", photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495012326/trotinette_lm2cdx.jpg")
Category.create!(name: "e-Bike", photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495012326/trotinette_lm2cdx.jpg")
Category.create!(name: "Hoverboard", photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495012326/trotinette_lm2cdx.jpg")
Category.create!(name: "e-Scooter", photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495012326/trotinette_lm2cdx.jpg")
Category.create!(name: "Segway", photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495012326/trotinette_lm2cdx.jpg")
Category.create!(name: "e-Motobike", photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495012326/trotinette_lm2cdx.jpg")

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

print "Le seed est fini"


