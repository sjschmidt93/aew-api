require_relative '../seed_helpers'

# stables = Stable.create([
#   { name: "The Inner Circle", wrestlers: Wrestler.where(name: ["Sammy Guevara", "Chris Jericho", "Jake Hager", "Santana", "Ortiz"]) },
#   { name: "The Elite", wrestlers: Wrestler.where(name: ["Cody", "Adam Page", "Kenny Omega", "Matt Jackson", "Nick Jackson"]) },
#   { name: "SCU", wrestlers: Wrestler.where(name: ["Scorpio Sky", "Frankie Kazarian", "Christopher Daniels"]) }
# ])

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

TagTeamMembership.create([
  { tag_team: tag_teams[0], wrestler: Wrestler.find_by(name: "Isiah Kassidy") },
  { tag_team: tag_teams[0], wrestler: Wrestler.find_by(name: "Marq Quen") },
  { tag_team: tag_teams[5], wrestler: Wrestler.find_by(name: "Nick Jackson") },
  { tag_team: tag_teams[5], wrestler: Wrestler.find_by(name: "Matt Jackson") },
  { tag_team: tag_teams[4], wrestler: Wrestler.find_by(name: "Kenny Omega") },
  { tag_team: tag_teams[4], wrestler: Wrestler.find_by(name: "Adam Page") }
])

# TagTeam.create([
#   { name: "Private Party", wrestlers: Wrestler.where(name: ["Isiah Kassidy", "Marq Quen"]) },
#   #{ name: "Jurassic Express", wrestlers: Wrestler.where(name: ["Jungle Boy", "Luchasauras", "Marko Stunt"]) },
#   { name: "Lucha Brothers", wrestlers: Wrestler.where(name: ["Pentagon Jr.", "Rey Fenix"]) },
#   { name: "The Butcher & the Blade", wrestlers: Wrestler.where(name: ["The Butcher", "The Blade"]) },
#   { name: "Best Friends", wrestlers: Wrestler.where(name: ["Chuck Taylor", "Trent"]) },
#   { name: "Kenny Omega & Adam Page", wrestlers: Wrestler.where(name: ["Kenny Omega", "Adam Page"]), stable: stables[1], image_url: 'https://static.wixstatic.com/media/94b54e_3880eeb83a3147c19c1ca6c62c292a85~mv2.jpg/v1/fill/w_260,h_260,al_c,q_80,usm_0.66_1.00_0.01/kenny-and-hangman.webp' },
#   { name: "The Young Bucks", wrestlers: Wrestler.where(name: ["Nick Jackson", "Matt Jackson"]), stable: stables[1] },
#   { name: "Santana & Ortiz", wrestlers: Wrestler.where(name: ["Santana", "Ortiz"]), stable: stables[0] },
#   { name: "Evil", wrestlers: Wrestler.where(name: ["Scorpio Sky", "Frankie Kazarian"]), stable: stables[2] }
#   #{ name: "The Dark Order", wrestlers: Wrestler.where(name: ["Brodie Lee", "John Silver", "Alex Reynolds", "Evil Uno", "Stu Grayson"]) }
# ])

events = Event.create([
  {
    name: "AEW Revolution",
    date: "2020-02-28",
    city: "Chicago, IL",
    venue: "Wintrust Arena",
    program: :ppv,
    image_url: "https://wrestlingnews.co/wp-content/uploads/2019/12/AEW-Revolution-scaled-1280x720.png"
  },
  {
    name: "AEW Double or Nothing",
    date: "2019-05-25",
    city: "Las Vegas, NV",
    venue: "MGM Grand Garden Arena",
    program: :ppv,
    image_url: "https://cdn.prowrestlingsheet.com/app/uploads/2020/04/14175137/double-or-nothing.jpg"
  },
  {
    name: "AEW Full Gear",
    date: "2019-11-09",
    city: "Baltimore, MD",
    venue: "Royal Farms Arena",
    program: :ppv,
    image_url: "https://s33079.pcdn.co/wp-content/uploads/2019/11/AEW-Full-Gear-1.png"
  },
  {
    name: "AEW Dynamite",
    date: "2020-04-30",
    city: "Broomfield, CO",
    venue: "1stBank Center",
    program: :dynamite
  }
])

championships = Championship.create([
  { name: "AEW World Championship", image_url: "https://i.imgur.com/5OOLdK7.png" },
  { name: "World Tag Team Championship" },
  { name: "AEW Women's World Championship", image_url: "https://i.imgur.com/GFhjs9w.png" }
])

# sides = Side.create([
#   { competitor: Wrestler.find_by(name: "") },
#   { competitor: Wrestler.find_by(name: "") }
# ])
# Match.create(sides: sides, event: events[], winning_side: sides[0])

sides = Side.create([
  { competitor: Wrestler.find_by(name: "Jon Moxley") },
  { competitor: Wrestler.find_by(name: "Chris Jericho") }
])
Match.create(sides: sides, event: events[0], winning_side: sides[0], championship: championships[0])

sides = Side.create([
  { competitor: TagTeam.find_by(name: "Kenny Omega & Adam Page") },
  { competitor: TagTeam.find_by(name: "The Young Bucks") }
])
Match.create(sides: sides, event: events[0], winning_side: sides[0])

sides = Side.create([
  { competitor: Wrestler.find_by(name: "Kenny Omega") },
  { competitor: Wrestler.find_by(name: "Chris Jericho") }
])
Match.create(sides: sides, event: events[1], winning_side: sides[1])

sides = Side.create([
  { competitor: TagTeam.find_by(name: "Santana & Ortiz") },
  { competitor: TagTeam.find_by(name: "The Young Bucks") }
])
Match.create(sides: sides, event: events[2], winning_side: sides[0])

### dynamite match

tag_team = TagTeam.create(name: "Le Sex Gods", is_official: true )
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Chris Jericho"), tag_team: tag_team)
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Sammy Guevara"), tag_team: tag_team)

tag_team = TagTeam.create(name: "Darby Allin & Jon Moxley")
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Darby Allin"), tag_team: tag_team)
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Jon Moxley"), tag_team: tag_team)

sides = Side.create([
  { competitor: TagTeam.find_by(name: "Le Sex Gods") },
  { competitor: TagTeam.find_by(name: "Darby Allin & Jon Moxley") }
])
Match.create(sides: sides, event: events[3], winning_side: sides[1])

### end dynamite match


#### dynamite 7/29/20

event = Event.create(
  name: "AEW Dynamite",
  date: "2020-07-20",
  city: "Jacksonville, FL",
  venue: "Daily's Place",
  program: :dynamite
)

SeedHelpers::create_singles_match("Cody", "Warhorse", event)

#### end dynamite 7/29/20



### six man tag TODO: make tag teams self-referential

event = Event.create({
  name: "AEW Dynamite",
  date: "2020-01-29",
  city: "Cleveland, OH",
  venue: "Wolstein Center",
  program: :dynamite
})

tag_team = TagTeam.create(name: "Chris Jericho & Santana & Ortiz")
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Chris Jericho"), tag_team: tag_team)
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Santana"), tag_team: tag_team)
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Ortiz"), tag_team: tag_team)

tag_team = TagTeam.create(name: "Darby Allin & Private Party")
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Darby Allin"), tag_team: tag_team)
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Isiah Kassidy"), tag_team: tag_team)
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Marq Quen"), tag_team: tag_team)

sides = Side.create([
  { competitor: TagTeam.find_by(name: "Chris Jericho & Santana & Ortiz") },
  { competitor: TagTeam.find_by(name: "Darby Allin & Private Party") }
])
Match.create(sides: sides, event: event, winning_side: sides[0])
###

#####
Reign.create([
  { start_date: "2019-08-31", end_date: "2020-02-29", competitor: Wrestler.find_by(name: "Chris Jericho"), championship: championships[0] },
  { start_date: "2020-02-29", competitor: Wrestler.find_by(name: "Jon Moxley"), championship: championships[0] }
])

Reign.create([
  { start_date: "2019-10-30", end_date: "2020-01-21", competitor: TagTeam.find_by(name: "SCU"), championship: championships[1] },
  { start_date: "2020-01-21", competitor: TagTeam.find_by(name: "Kenny Omega & Adam Page"), championship: championships[1] }
])

Reign.create([
  { start_date: "2019-10-02", end_date: "2020-02-12", competitor: Wrestler.find_by(name: "Riho"), championship: championships[2] },
  { start_date: "2020-02-12", competitor: Wrestler.find_by(name: "Nyla Rose"), championship: championships[2] }
])