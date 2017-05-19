print "On commence le Seed"

models = [
  Booking,
  Engine,
  Shop,
  User,
  Category
]


models.each do |model|
  model.destroy_all
end

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

Category.create!(categories)

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
Shop.create!(name: "Jean Michel Skateboard", address: "Marseille", telephone: "06 77 88 99 00")
Shop.create!(name: "Elephants on boad", address: "Nantes", telephone: "06 17 98 39 80")


engine_names = ['Major Rider', 'Green Xplore', 'Westcoast 2000', 'Liberty', 'Eco Lord', 'Victorious', 'Rockrider', 'Legend City',
  'Smooth Xplore', 'Spank 2000', 'Moutain Street', 'Silver Driver', 'Caval Dragoon', 'Tool Around','Junket Xplore']

engine_descriptions = ['The best choice to discover city, with a partner or on your own ', 'For dynamic and curious people who discover the city',
'The best association between sport and discover', 'A basic model which is quick to learn and easy to use', 'Enjoy the silence ! It does not produce noise',
'We are proud of his new model made by our hands !', 'A specific model for kids between 8-12 years old']

9.times do
  engine = Engine.create!(
    name: engine_names.sample,
    description: engine_descriptions.sample,
    price: (10..50).to_a.sample,
    category: Category.all.sample,
    shop: Shop.all.sample
    )
end



print "Le seed est fini"


