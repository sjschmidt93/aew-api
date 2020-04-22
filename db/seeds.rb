# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Wrestler.create([
  {
    name: "Jon Moxley",
    image_url: "https://static.wixstatic.com/media/94b54e_7330fb14f4cf4877b9ce60fb0b3a24f2~mv2.jpg/v1/fill/w_260,h_260,al_c,q_80,usm_0.66_1.00_0.01/Jon%20Moxley%20Title%20History.webp",
    height: 74,
    weight: 225,
    hometown: "Cincinatti, Ohio"
  },
  {
    name: "Chris Jericho",
    nickname: "Le Champion",
    image_url: "https://static.wixstatic.com/media/94b54e_2fd49ec924f140b7ad2ac3f813d69cfd~mv2.jpg/v1/fill/w_260,h_260,al_c,q_80,usm_0.66_1.00_0.01/jericho-title-history.webp",
    height: 72,
    weight: 225,
    hometown: "Winnipeg, Manitoba, Canda"
  },
  {
    name: "Kenny Omega",
    image_url: "https://imgur.com/eIZfqFd"
  },
])

Wrestler.create([
  { name: "Adam Page", nickname: "Hangman" },
  { name: "Alex Reynolds" },
  { name: "Angelico" },
  { name: "Brodie Lee", nickname: "The Exalted One", image_url: "https://static.wixstatic.com/media/94b54e_c2e36f3b4df94800b68f9a2d3aedb01d~mv2.jpg/v1/fill/w_320,h_478,fp_0.50_0.50,q_90/94b54e_c2e36f3b4df94800b68f9a2d3aedb01d~mv2.webp" },
  { name: "Brandon Cutler" },
  { name: "Christopher Daniels" },
  { name: "Chuck Taylor" },
  { name: "Cima" },
  { name: "Cody" },
  { name: "Colt Cabana" },
  { name: "Darby Allin" },
  { name: "Dustin Rhodes", nickname: "The Natural" },
  { name: "Evil Uno" },
  { name: "Frankie Kazarian" },
  { name: "Isiah Kassidy" },
  { name: "Jack Evans" },
  { name: "Jake Hager" },
  { name: "Jimmy Havoc" },
  { name: "Joey Janela", nickname: "The Bad Boy" },
  { name: "John Silver" },
  { name: "Jon Moxley" },
  { name: "Jungle Boy" },
  { name: "Kip Sabian", nickname: "Superbad" },
  { name: "Lance Archer" },
  { name: "Luchasauras" },
  { name: "Luther" },
  { name: "Matt Hardy" },
  { name: "Matt Jackson" },
  { name: "MJF", nickname: "Maxwell Jacob Friedman" },
  { name: "Marko Stunt" },
  { name: "Marq Quen" },
  { name: "Michael Nakazawa" },
  { name: "Nick Jackson" },
  { name: "Orange Cassidy" },
  { name: "Ortiz" },
  { name: "Pac", nickname: "The Bastard" },
  { name: "Pentagon Jr." },
  { name: "Peter Avalon" },
  { name: "QT Marshall"},
  { name: "Rey Fenix" },
  { name: "Sammy Guevara", nickname: "Spanish God" },
  { name: "Santana" },
  { name: "Scorpio Sky" },
  { name: "Shawn Spears" },
  { name: "Sonny Kiss" },
  { name: "Stu Grayson" },
  { name: "The Butcher" },
  { name: "The Blade" },
  { name: "Trent" },
  { name: "Wardlow" }
])

Wrestler.create([
  { name: "Allie", division: :womens, nickname: "The Bunny" },
  { name: "Anna Jay", division: :womens},
  { name: "Awesome Kong", division: :womens},
  { name: "Bea Priestley", division: :womens, image_url: 'https://static.wixstatic.com/media/94b54e_7763a8f70531426da08fd7fe118682af~mv2.jpg/v1/fill/w_320,h_478,fp_0.50_0.50,q_90/94b54e_7763a8f70531426da08fd7fe118682af~mv2.webp'},
  { name: "Big Swole", division: :womens},
  { name: "Brandi Rhodes", division: :womens},
  { name: "Britt Baker", division: :womens},
  { name: "Emi Sakura", division: :womens},
  { name: "Hikaru Shida", division: :womens},
  { name: "Kris Statlander", division: :womens},
  { name: "Leva Bates", division: :womens},
  { name: "Mel", division: :womens},
  { name: "Nyla Rose", division: :womens},
  { name: "Penelope Ford", division: :womens},
  { name: "Riho", division: :womens},
  { name: "Sadie Gibbs", division: :womens},
  { name: "Shanna", division: :womens},
  { name: "Yuka Sakazaki", division: :womens},
])

# stables = Stable.create([
#   { name: "The Inner Circle", wrestlers: Wrestler.where(name: ["Sammy Guevara", "Chris Jericho", "Jake Hager", "Santana", "Ortiz"]) },
#   { name: "The Elite", wrestlers: Wrestler.where(name: ["Cody", "Adam Page", "Kenny Omega", "Matt Jackson", "Nick Jackson"]) },
#   { name: "SCU", wrestlers: Wrestler.where(name: ["Scorpio Sky", "Frankie Kazarian", "Christopher Daniels"]) }
# ])

tag_teams = TagTeam.create([
  { name: "Private Party" },
  { name: "Lucha Brothers" },
  { name: "The Butcher & the Blade" },
  { name: "Best Friends" },
  { name: "Kenny Omega & Adam Page" },
  { name: "The Young Bucks" },
  { name: "Santana & Ortiz" },
  { name: "Frankie Kazarian & Scorpio Sky" }
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

sides = Side.create([
  { competitor: Wrestler.find_by(name: "Jon Moxley") },
  { competitor: Wrestler.find_by(name: "Chris Jericho") }
])
Match.create(sides: sides, event: events[0], winning_side: sides[0])

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

tag_team = TagTeam.create(name: "Chris Jericho & Sammy Guevara", is_official: false)
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Chris Jericho"), tag_team: tag_team)
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Sammy Guevara"), tag_team: tag_team)

tag_team = TagTeam.create(name: "Darby Allin & Jon Moxley", is_official: false)
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Darby Allin"), tag_team: tag_team)
TagTeamMembership.create(wrestler: Wrestler.find_by(name: "Jon Moxley"), tag_team: tag_team)

sides = Side.create([
  { competitor: TagTeam.find_by(name: "Chris Jericho & Sammy Guevara") },
  { competitor: TagTeam.find_by(name: "Darby Allin & Jon Moxley") }
])
Match.create(sides: sides, event: events[3], winning_side: sides[1])

### end dynamite match


#####
championship = Championship.create(name: "AEW World Championship", image_url: "https://i.imgur.com/5OOLdK7.png")

reigns = Reign.create([
  { start_date: "2019-08-31", end_date: "2020-02-20", competitor: Wrestler.find_by(name: "Chris Jericho"), championship: championship },
  { start_date: "2020-02-29", competitor: Wrestler.find_by(name: "Jon Moxley"), championship: championship }
])

championship = Championship.create(name: "World Tag Team Championship")

reigns = Reign.create([
  { start_date: "2019-10-30", end_date: "2020-01-21", competitor: TagTeam.find_by(name: "SCU"), championship: championship },
  { start_date: "2020-01-21", competitor: TagTeam.find_by(name: "Kenny Omega & Adam Page"), championship: championship }
])
