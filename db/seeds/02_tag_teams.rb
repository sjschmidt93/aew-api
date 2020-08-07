require_relative '../seed_helpers'

SeedHelpers::create_tag_team("Le Sex Gods", true, ["Chris Jericho", "Sammy Guevara"])
SeedHelpers::create_tag_team("Dark Order (Evil Uno & Stu Grayson)", true, ["Evil Uno", "Stu Grayson"])
SeedHelpers::create_tag_team("Kenny Omega & Adam Page", true, ["Kenny Omega", "Adam Page"])
SeedHelpers::create_tag_team("The Young Bucks", true, ["Matt Jackson", "Nick Jackson"])
SeedHelpers::create_tag_team("Private Party", true, ["Isiah Kassidy", "Marq Quen"])
SeedHelpers::create_tag_team("SCU (Frankie Kazarian & Scorpio Sky)", true, ["Frankie Kazarian", "Scorpio Sky"])
SeedHelpers::create_tag_team("Lucha Brothers", true, ["Pentagon Jr.", "Rey Fenix"])
SeedHelpers::create_tag_team("The Butcher & the Blade", true, ["The Butcher", "The Blade"])
SeedHelpers::create_tag_team("Best Friends", true, ["Chuck Taylor", "Trent"])
SeedHelpers::create_tag_team("Santana & Ortiz", true, ["Santana", "Ortiz"])
SeedHelpers::create_tag_team("FTR", true, ["Dax Harwood", "Cash Wheeler"])


# unofficial
SeedHelpers::create_tag_team("Jurassic Express & Best Friends & Orange Cassidy", false, ["Chuck Taylor", "Trent", "Jungle Boy", "Luchasauras", "Orange Cassidy"])
SeedHelpers::create_tag_team("Inner Circle", false, ["Chris Jericho", "Sammy Guevara", "Jake Hager", "Ortiz", "Santana"])

SeedHelpers::create_tag_team("Darby Allin & Jon Moxley", false, ["Darby Allin", "Jon Moxley"])
SeedHelpers::create_tag_team("Brian Cage & Ricky Starks", false, ["Brian Cage", "Ricky Starks"])
SeedHelpers::create_tag_team(
  "Dark Order (5 & 9 & Colt Cabana & Evil Uno & Stu Grayson & Brodie Lee)",
  false,
  ["5", "9", "Colt Cabana", "Evil Uno", "Stu Grayson", "Brodie Lee"]
) # id: 16

SeedHelpers::create_tag_team(
  "Kenny Omega & Adam Page & FTR & The Young Bucks",
  false,
  ["Kenny Omega", "Adam Page", "Matt Jackson", "Nick Jackson", "Dax Harwood", "Cash Wheeler"],
  ["Kenny Omega & Adam Page", "The Young Bucks", "FTR"]
)