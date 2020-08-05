require_relative '../seed_helpers'

tag_teams = TagTeam.create([
  { name: "Lucha Brothers", is_official: true },
  { name: "The Butcher & the Blade", is_official: true },
  { name: "Best Friends", is_official: true },
  { name: "Santana & Ortiz", is_official: true }
])

SeedHelpers::create_tag_team("Le Sex Gods", true, ["Chris Jericho", "Sammy Guevara"])
SeedHelpers::create_tag_team("Dark Order (Evil Uno & Stu Grayson)", true, ["Evil Uno", "Stu Grayson"])

SeedHelpers::create_tag_team("SCU (Frankie Kazarian & Scorpio Sky)", true, ["Frankie Kazarian", "Scorpio Sky"])

SeedHelpers::create_tag_team("Jurassic Express & Best Friends & Orange Cassidy", false, ["Chuck Taylor", "Trent", "Jungle Boy", "Luchasauras", "Orange Cassidy"])
SeedHelpers::create_tag_team("Inner Circle", false, ["Chris Jericho", "Sammy Guevara", "Jake Hager", "Ortiz", "Santana"])

SeedHelpers::create_tag_team("Kenny Omega & Adam Page", true, ["Kenny Omega", "Adam Page"])
SeedHelpers::create_tag_team("The Young Bucks", true, ["Matt Jackson", "Nick Jackson"])
SeedHelpers::create_tag_team("Private Party", true, ["Isiah Kassidy", "Marq Quen"])


# unofficial
SeedHelpers::create_tag_team("Darby Allin & Jon Moxley", false, ["Darby Allin", "Jon Moxley"])
SeedHelpers::create_tag_team("Brian Cage & Ricky Starks", false, ["Brian Cage", "Ricky Starks"])