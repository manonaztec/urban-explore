print "On commence le Seed"

Engine.destroy_all
Shop.destroy_all
User.destroy_all
Category.destroy_all

categories = [
  {
    name: "e-Skateboard",
    photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495013902/esakte_yuredy.jpg"
  },
  {
    name: "e-Bike",
    photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495013903/velo_nlybwa.png"
  },
  {
    name: "Hoverboard",
    photo_url:"http://res.cloudinary.com/dcsrdzgza/image/upload/v1495014242/hoverboard_schrqq.png"
  },
  {
    name: "e-Scooter",
    photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495013903/trottinette_s5viga.png"
  },
  {
    name: "Segway",
    photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495013903/segway_cphbta.png"
  },
  {
    name: "e-Motobike",
    photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495013903/emotobike_cv89qq.png"
  }
]

# categories.each do |category|
#   Category.create!(name: category)

# end

Category.create!(name: "e-Skateboard", photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495013902/esakte_yuredy.jpg")
Category.create!(name: "e-Bike", photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495013903/velo_nlybwa.png")
Category.create!(name: "Hoverboard", photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495014242/hoverboard_schrqq.png")
Category.create!(name: "e-Scooter", photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495013903/trottinette_s5viga.png")
Category.create!(name: "Segway", photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495013903/segway_cphbta.png")
Category.create!(name: "e-Motobike", photo_url: "http://res.cloudinary.com/dcsrdzgza/image/upload/v1495013903/emotobike_cv89qq.png")

4.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end

Shop.create!(name: "Green riders", address: "1, Cours Victor Hugo, Bordeaux", telephone: "06 77 88 99 00")
Shop.create!(name: "Roll it", address: "2, Cours Pasteur, Bordeaux", telephone: "06 77 88 99 00")
Shop.create!(name: "Mille et une roue", address: "3, Cours du Maréchal Foch , Bordeaux", telephone: "06 77 88 99 00")
Shop.create!(name: "Fantastic Electric", address: "4, Cours du Medoc, Bordeaux", telephone: "06 77 88 99 00")
Shop.create!(name: "Jean michel skateboard", address: "Marseille", telephone: "06 77 88 99 00")


9.times do
  engine = Engine.create!(
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence(3),
    price: (10..50).to_a.sample,
    category: Category.all.sample,
    shop: Shop.all.sample
    )
end

print "Le seed est fini"


