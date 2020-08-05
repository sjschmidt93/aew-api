require_relative '../seed_helpers'

tag_teams = TagTeam.create([
  { name: "Private Party", is_official: true },
  { name: "Lucha Brothers", is_official: true },
  { name: "The Butcher & the Blade", is_official: true },
  { name: "Best Friends", is_official: true },
  { name: "The Young Bucks", is_official: true },
  { name: "Santana & Ortiz", is_official: true }
])

SeedHelpers::create_tag_team("Le Sex Gods", true, ["Chris Jericho", "Sammy Guevara"])
SeedHelpers::create_tag_team("Dark Order (Evil Uno & Stu Grayson)", true, ["Evil Uno", "Stu Grayson"])

SeedHelpers::create_tag_team("SCU (Frankie Kazarian & Scorpio Sky)", true, ["Frankie Kazarian", "Scorpio Sky"])

SeedHelpers::create_tag_team("Jurassic Express & Best Friends & Orange Cassidy", false, ["Chuck Taylor", "Trent", "Jungle Boy", "Luchasauras", "Orange Cassidy"])
SeedHelpers::create_tag_team("Inner Circle", false, ["Chris Jericho", "Sammy Guevara", "Jake Hager", "Ortiz", "Santana"])

SeedHelpers::create_tag_team("Kenny Omega & Adam Page", true, ["Kenny Omega", "Adam Page"])

TagTeamMembership.create([
  { tag_team: tag_teams[0], wrestler: Wrestler.find_by(name: "Isiah Kassidy") },
  { tag_team: tag_teams[0], wrestler: Wrestler.find_by(name: "Marq Quen") },
  { tag_team: tag_teams[5], wrestler: Wrestler.find_by(name: "Nick Jackson") },
  { tag_team: tag_teams[5], wrestler: Wrestler.find_by(name: "Matt Jackson") },
  { tag_team: tag_teams[4], wrestler: Wrestler.find_by(name: "Kenny Omega") },
  { tag_team: tag_teams[4], wrestler: Wrestler.find_by(name: "Adam Page") },
])


# unofficial
tag_team = TagTeam.create(name: "Darby Allin & Jon Moxley")
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Darby Allin"), tag_team: tag_team)
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Jon Moxley"), tag_team: tag_team)

SeedHelpers::create_tag_team("Brian Cage & Ricky Starks", false, ["Brian Cage", "Ricky Starks"])