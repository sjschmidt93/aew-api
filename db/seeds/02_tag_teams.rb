require_relative '../seed_helpers'

SeedHelpers::create_tag_team({ name: "Le Sex Gods", is_official: true }, ["Chris Jericho", "Sammy Guevara"])
SeedHelpers::create_tag_team({ name: "Dark Order (Evil Uno & Stu Grayson)", is_official: true }, ["Evil Uno", "Stu Grayson"])
SeedHelpers::create_tag_team(
  {
    name: "Kenny Omega & Adam Page",
    is_official: true,
    image_url: "https://i.imgur.com/I2N0Of7.png"
  },
  ["Kenny Omega", "Adam Page"]
)
SeedHelpers::create_tag_team(
  {
    name: "The Young Bucks",
    is_official: true,
    image_url: 'https://i.imgur.com/Rjhuzsg.png'
  },
  ["Matt Jackson", "Nick Jackson"])
SeedHelpers::create_tag_team({ name: "Private Party", is_official: true }, ["Isiah Kassidy", "Marq Quen"])

SeedHelpers::create_tag_team(
  {
    name: "SCU (Frankie Kazarian & Scorpio Sky)",
    is_official: true,
    image_url: "https://i.imgur.com/7uwBj99.png"
  },
  ["Frankie Kazarian", "Scorpio Sky"]
)

SeedHelpers::create_tag_team({ name: "Lucha Brothers", is_official: true }, ["Pentagon Jr.", "Rey Fenix"])
SeedHelpers::create_tag_team({ name: "The Butcher & the Blade", is_official: true }, ["The Butcher", "The Blade"])
SeedHelpers::create_tag_team({ name: "Best Friends", is_official: true }, ["Chuck Taylor", "Trent"])
SeedHelpers::create_tag_team({ name: "Santana & Ortiz", is_official: true }, ["Santana", "Ortiz"])

SeedHelpers::create_tag_team(
  {
    name: "FTR",
    is_official: true,
    image_url: "https://i.imgur.com/mevUcvQ.png"
  },
  ["Dax Harwood", "Cash Wheeler"]
)


# unofficial
SeedHelpers::create_tag_team(
  { name: "Jurassic Express & Best Friends & Orange Cassidy", is_official: false },
  ["Chuck Taylor", "Trent", "Jungle Boy", "Luchasauras", "Orange Cassidy"]
)
SeedHelpers::create_tag_team(
  { name: "Inner Circle", is_official: false },
  ["Chris Jericho", "Sammy Guevara", "Jake Hager", "Ortiz", "Santana"]
)

SeedHelpers::create_tag_team({ name: "Darby Allin & Jon Moxley", is_official: false }, ["Darby Allin", "Jon Moxley"])
SeedHelpers::create_tag_team({ name: "Brian Cage & Ricky Starks", is_official: false }, ["Brian Cage", "Ricky Starks"])
SeedHelpers::create_tag_team(
  {
    name: "Dark Order (5 & 9 & Colt Cabana & Evil Uno & Stu Grayson & Brodie Lee)",
    is_official: false
  },
  ["5", "9", "Colt Cabana", "Evil Uno", "Stu Grayson", "Brodie Lee"]
) # id: 16

SeedHelpers::create_tag_team(
  {
    name: "Kenny Omega & Adam Page & FTR & The Young Bucks",
    is_official: false
  },
  ["Kenny Omega", "Adam Page", "Matt Jackson", "Nick Jackson", "Dax Harwood", "Cash Wheeler"],
  ["Kenny Omega & Adam Page", "The Young Bucks", "FTR"]
)