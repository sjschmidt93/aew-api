require_relative '../seed_helpers'

tag_teams = TagTeam.create([
  { name: "Private Party", is_official: true },
  { name: "Lucha Brothers", is_official: true },
  { name: "The Butcher & the Blade", is_official: true },
  { name: "Best Friends", is_official: true },
  {
    name: "Kenny Omega & Adam Page",
    image_url: "https://static.wixstatic.com/media/94b54e_3880eeb83a3147c19c1ca6c62c292a85~mv2.jpg/v1/fill/w_260,h_260,al_c,q_80,usm_0.66_1.00_0.01/kenny-and-hangman.webp",
    is_official: true
  },
  { name: "The Young Bucks", is_official: true },
  { name: "Santana & Ortiz", is_official: true },
  { name: "Frankie Kazarian & Scorpio Sky", is_official: true }
])

SeedHelpers::create_tag_team("Le Sex Gods", true, ["Chris Jericho", "Sammy Guevara"])
SeedHelpers::create_tag_team("Dark Order (Evil Uno & Stu Grayson)", true, ["Evil Uno", "Stu Grayson"])

SeedHelpers::create_tag_team("Jurassic Express & Best Friends & Orange Cassidy", false, ["Chuck Taylor", "Trent", "Jungle Boy", "Luchasauras", "Orange Cassidy"])
SeedHelpers::create_tag_team("Inner Circle", false, ["Chris Jericho", "Sammy Guevara", "Jake Hager", "Ortiz", "Santana"])

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