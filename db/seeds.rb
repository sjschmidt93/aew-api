# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Wrestler.create([
  { name: "Jon Moxley", image_url: "https://static.wixstatic.com/media/94b54e_7330fb14f4cf4877b9ce60fb0b3a24f2~mv2.jpg/v1/fill/w_260,h_260,al_c,q_80,usm_0.66_1.00_0.01/Jon%20Moxley%20Title%20History.webp" },
  { name: "Chris Jericho", nickname: "Le Champion", image_url: "https://static.wixstatic.com/media/94b54e_2fd49ec924f140b7ad2ac3f813d69cfd~mv2.jpg/v1/fill/w_260,h_260,al_c,q_80,usm_0.66_1.00_0.01/jericho-title-history.webp" },
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
  { name: "Kenny Omega" },
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

stables = Stable.create([
  { name: "The Inner Circle", wrestlers: Wrestler.where(name: ["Sammy Guevara", "Chris Jericho", "Jake Hager", "Santana", "Ortiz"]) },
  { name: "The Elite", wrestlers: Wrestler.where(name: ["Cody", "Adam Page", "Kenny Omega", "Matt Jackson", "Nick Jackson"]) },
  { name: "SCU", wrestlers: Wrestler.where(name: ["Scorpio Sky", "Frankie Kazarian", "Christopher Daniels"]) }
])

TagTeam.create([
  { name: "Private Party", wrestlers: Wrestler.where(name: ["Isiah Kassidy", "Marq Quen"]) },
  #{ name: "Jurassic Express", wrestlers: Wrestler.where(name: ["Jungle Boy", "Luchasauras", "Marko Stunt"]) },
  { name: "Lucha Brothers", wrestlers: Wrestler.where(name: ["Pentagon Jr.", "Rey Fenix"]) },
  { name: "The Butcher & the Blade", wrestlers: Wrestler.where(name: ["The Butcher", "The Blade"]) },
  { name: "Best Friends", wrestlers: Wrestler.where(name: ["Chuck Taylor", "Trent"]) },
  { name: "Kenny Omega & Adam Page", wrestlers: Wrestler.where(name: ["Kenny Omega", "Adam Page"]), stable: stables[1], image_url: 'https://static.wixstatic.com/media/94b54e_3880eeb83a3147c19c1ca6c62c292a85~mv2.jpg/v1/fill/w_260,h_260,al_c,q_80,usm_0.66_1.00_0.01/kenny-and-hangman.webp' },
  { name: "The Young Bucks", wrestlers: Wrestler.where(name: ["Nick Jackson", "Matt Jackson"]), stable: stables[1] },
  { name: "Santana & Ortiz", wrestlers: Wrestler.where(name: ["Santana", "Ortiz"]), stable: stables[0] },
  { name: "Frankie Kazarian & Scorpio Sky", wrestlers: Wrestler.where(name: ["Scorpio Sky", "Frankie Kazarian"]), stable: stables[2] }
  #{ name: "The Dark Order", wrestlers: Wrestler.where(name: ["Brodie Lee", "John Silver", "Alex Reynolds", "Evil Uno", "Stu Grayson"]) }
])

events = Event.create([
  { name: "AEW Revolution", date: "2020-02-28", city: "Chicago, IL", venue: "Wintrust Arena", event_type: :ppv },
  { name: "AEW Double or Nothing", date: "2019-05-25", city: "Las Vegas, NV", venue: "MGM Grand Garden Arena", event_type: :ppv },
  { name: "AEW Full Gear", date: "2019-11-09", city: "Baltimore, MD", venue: "Royal Farms Arena", event_type: :ppv }
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

# tag_teams = TagTeam.where(name: ["Kenny Omega & Adam Page", "The Young Bucks"])
# wrestlers = Wrestler.where(name: ["Kenny Omega", "Adam Page", "Nick Jackson", "Matt Jackson"])
# Match.create(tag_teams: tag_teams, wrestlers: wrestlers, match_type: :tag, event: event)

# tag_teams = TagTeam.where(name: ["The Dark Order", "SCU"])
# wrestlers = Wrestler.where(name: ["Evil Uno", "Stu Grayson", "Frankie Kazarian", "Scorpio Sky"])
# Match.create(tag_teams: tag_teams, wrestlers: wrestlers, match_type: :tag, event: event)

#####
championship = Championship.create(name: "AEW World Championship")

reigns = Reign.create([
  { start_date: "2019-08-31", end_date: "2020-02-20", competitor: Wrestler.find_by(name: "Chris Jericho"), championship: championship },
  { start_date: "2020-02-29", competitor: Wrestler.find_by(name: "Jon Moxley"), championship: championship }
])

championship = Championship.create(name: "World Tag Team Championship")

reigns = Reign.create([
  { start_date: "2019-10-30", end_date: "2020-01-21", competitor: TagTeam.find_by(name: "SCU"), championship: championship },
  { start_date: "2020-01-21", competitor: TagTeam.find_by(name: "Kenny Omega & Adam Page"), championship: championship }
])
