Order.destroy_all
Guitar.destroy_all
Address.destroy_all
User.destroy_all
BodyWood.destroy_all
Shape.destroy_all
NeckWood.destroy_all
FretWood.destroy_all
HeadShape.destroy_all
Pickup.destroy_all
Dexterity.destroy_all
Pickguard.destroy_all
Category.destroy_all
Finish.destroy_all
Color.destroy_all

BodyWood.create!(name: "Acajou", identifier: "acajou", picture: "http://res.cloudinary.com/lucien/image/upload/v1481640865/wood/acajou_zo34mh.jpg", price_cents: 5000)
BodyWood.create!(name: "Tilleul", identifier: "tilleul", picture: "http://res.cloudinary.com/lucien/image/upload/v1481640859/wood/tilleul_j2rjlf.jpg", price_cents: 5000)
BodyWood.create!(name: "Frêne", identifier: "frene", picture: "http://res.cloudinary.com/lucien/image/upload/v1481640850/wood/frene_ktngtj.jpg", price_cents: 15000)
BodyWood.create!(name: "Aulne", identifier: "aulne", picture: "http://res.cloudinary.com/lucien/image/upload/v1481640844/wood/aulne_s7mxte.jpg", price_cents: 20000)
p "bodywoods seeded"

Shape.create!(name: "stratocaster", price_cents: 30000)
Shape.create!(name: "telecaster", price_cents: 35000)
p "shape seeded"

NeckWood.create!(name: "erable", picture: "http://res.cloudinary.com/lucien/image/upload/v1481640858/wood/erable_kw9ypj.jpg", price_cents: 5000)
NeckWood.create!(name: "acajou", picture: "acajou.jpg", price_cents: 15000)
p "neckwood seeded"

FretWood.create!(name: "Erable" , identifier: "erable", picture: "http://res.cloudinary.com/lucien/image/upload/v1481640858/wood/erable_kw9ypj.jpg", price_cents: 5000)
FretWood.create!(name: "Ebene" , identifier: "ebene", picture: "http://res.cloudinary.com/lucien/image/upload/v1481640838/wood/ebene_muiwjk.jpg", price_cents: 10000)
FretWood.create!(name: "Palissandre" , identifier: "palissandre", picture: "http://res.cloudinary.com/lucien/image/upload/v1481640849/wood/palissandre_y6q4xx.jpg", price_cents: 15000)
FretWood.create!(name: "Erable moucheté" , identifier: "erable-mouchete", picture: "http://res.cloudinary.com/lucien/image/upload/v1481640827/wood/erable-mouchete_jbyqva.jpg", price_cents: 15000)
p "fretwood seeded"

HeadShape.create!(name: "fender telecaster", price_cents: 10000)
HeadShape.create!(name: "fender stratocaster", price_cents: 20000)
p "headshape seeded"

Dexterity.create!(name: "Droitier", number: 1)
Dexterity.create!(name: "Gaucher", number: 2)
p "dexterity seeded"

Pickguard.create!(name: "Rouge", identifier: "rouge", picture: "red.jpg", price_cents: 10000)
Pickguard.create!(name: "Bleu", identifier: "bleu", picture: "blue.jpg", price_cents: 10000)
Pickguard.create!(name: "Blanc", identifier: "blanc", picture: "white.jpg", price_cents: 15000)
Pickguard.create!(name: "Noir", identifier: "noir", picture: "black.jpg", price_cents: 15000)
p "pickguard seeded"

Category.create!(name: "Electrique", picture: "show-guitar-electric-shape.png", price_cents: 50000, number: 1)
Category.create!(name: "Acoustique", picture: "show-guitar-shape.png",  price_cents: 100000, number: 2)
p "category seeded"

Finish.create!(name: "Brillant", price_cents: 5000)
Finish.create!(name: "Mat", price_cents: 5000)
p "finish seeded"

User.create!(email: "anonymous@aaa.com", password: "111111", username: "un utilisateur anonyme")
User.create!(email: "aaa@aaa.com", password: "111111", username: "toto")
User.create!(email: "bbb@bbb.com", password: "222222", username: "titi")
p "users seeded"

Pickup.create!(name: "White", identifier: "white", picture: "http://res.cloudinary.com/lucien/image/upload/v1483443538/pickup-white_ej7pou.png", price_cents: 20000)
Pickup.create!(name: "Black", identifier: "black", picture: "http://res.cloudinary.com/lucien/image/upload/v1483443538/pickup-black_bg34wz.png", price_cents: 20000)
p "pickups seeded"

Color.create!(name: "Aucune", identifier: "aucune", code: "", picture: "http://res.cloudinary.com/lucien/image/upload/v1493652869/colors/aucune.jpg")
Color.create!(name: "Black Jet", identifier: "black-jet", code: "#0D0D0D", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997214/colors/Solid/black-jet.jpg")
Color.create!(name: "Blue Daphne", identifier: "blue-daphne", code: "#97E1EF", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997211/colors/Solid/blue-daphne.jpg")
Color.create!(name: "Blue Sky", identifier: "blue-sky", code: "#688A99", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997213/colors/Solid/blue-sky.jpg")
Color.create!(name: "Blue Sonic", identifier: "blue-sonic", code: "#B0DAE0", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997213/colors/Solid/blue-sonic.jpg")
Color.create!(name: "Blue Union", identifier: "blue-union", code: "#0B00E7", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997212/colors/Solid/blue-union.jpg")
Color.create!(name: "Cream Vintage", identifier: "cream-vintage", code: "#EBEFB9", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997212/colors/Solid/cream-vintage.jpg")
Color.create!(name: "Desert Tan", identifier: "desert-tan", code: "#FAC388", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997213/colors/Solid/desert-tan.jpg")
Color.create!(name: "Green British Racing", identifier: "green-british-racing", code: "#175823", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997212/colors/Solid/green-british-racing.jpg")
Color.create!(name: "Green Seafoam", identifier: "green-seafoam", code: "#33EAB7", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997213/colors/Solid/green-seafoam.jpg")
Color.create!(name: "Green Surf", identifier: "green-seafoam", code: "#33EAB7", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997212/colors/Solid/green-surf.jpg")
Color.create!(name: "Orange Capri", identifier: "orange-capri", code: "#FEFAE3", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997213/colors/Solid/orange-capri.jpg")
Color.create!(name: "Orange Surf", identifier: "orange-surf", code: "#F87D56", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997212/colors/Solid/orange-surf.jpg")
Color.create!(name: "Pink Shell", identifier: "pink-shell", code: "#FDEADC", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997213/colors/Solid/pink-shell.jpg")
Color.create!(name: "Red Dakota", identifier: "red-dakota", code: "#7A0F22", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997214/colors/Solid/red-dakota.jpg")
Color.create!(name: "Red Fiesta", identifier: "red-fiesta", code: "#CC3237", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997212/colors/Solid/red-fiesta.jpg")
Color.create!(name: "Red Union", identifier: "red-union", code: "#DD0021", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997213/colors/Solid/red-union.jpg")
Color.create!(name: "White Aged Olympic", identifier: "white-aged-olympic", code: "#D2CFC7", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997213/colors/Solid/white-aged-olympic.jpg")
Color.create!(name: "White Arctic", identifier: "white-arctic", code: "#FFFEFF", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997213/colors/Solid/white-arctic.jpg")
Color.create!(name: "White New Olympic", identifier: "white-new-olympic", code: "#3B3B3B", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997213/colors/Solid/white-new-olympic.jpg")
Color.create!(name: "Yellow TV", identifier: "yellow-tv", code: "#E1C883", picture: "http://res.cloudinary.com/lucien/image/upload/v1492997212/colors/Solid/yellow-tv.jpg")
p "colors seeded"

Guitar.create!(
  name: "base",
  description: "",
  body_wood_id: BodyWood.first.id,
  user_id: User.first.id,
  shape_id: Shape.first.id,
  dexterity_id: Dexterity.first.id,
  pickguard_id: Pickguard.first.id,
  finish_id: Finish.first.id,
  category_id: Category.first.id,
  neck_wood_id: NeckWood.first.id,
  fret_wood_id: FretWood.first.id,
  head_shape_id: HeadShape.first.id,
  pickup_id: Pickup.first.id,
  price_cents: "170000",
  # sku: [BodyWood.first.id, Shape.first.id, Dexterity.first.id, Color.first.id].join('')
)
p "guitars seeded"
