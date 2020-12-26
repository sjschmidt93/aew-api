require_relative '../seed_helpers'

# stables = Stable.create([
#   { name: "The Inner Circle", wrestlers: Wrestler.where(name: ["Sammy Guevara", "Chris Jericho", "Jake Hager", "Santana", "Ortiz"]) },
#   { name: "The Elite", wrestlers: Wrestler.where(name: ["Cody", "Adam Page", "Kenny Omega", "Matt Jackson", "Nick Jackson"]) },
#   { name: "SCU", wrestlers: Wrestler.where(name: ["Scorpio Sky", "Frankie Kazarian", "Christopher Daniels"]) }
# ])

events = Event.create([
  {
    name: "Revolution 2020",
    date: "2020-02-28",
    city: "Chicago, IL",
    venue: "Wintrust Arena",
    program: :ppv,
    image_url: "https://wrestlingnews.co/wp-content/uploads/2019/12/AEW-Revolution-scaled-1280x720.png"
  },
  {
    name: "Double or Nothing 2019",
    date: "2019-05-25",
    city: "Las Vegas, NV",
    venue: "MGM Grand Garden Arena",
    program: :ppv,
    image_url: "https://cdn.prowrestlingsheet.com/app/uploads/2020/04/14175137/double-or-nothing.jpg"
  },
  {
    name: "Full Gear 2019",
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


# TODO: make enums for championship string literals
SeedHelpers::create_singles_match("Jon Moxley", "Chris Jericho", events[0], "AEW World Championship")

SeedHelpers::create_tag_match("Kenny Omega & Adam Page", "The Young Bucks", events[0], "AEW World Tag Team Championship")

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

sides = Side.create([
  { competitor: TagTeam.find_by(name: "Le Sex Gods") },
  { competitor: TagTeam.find_by(name: "Darby Allin & Jon Moxley") }
])
Match.create(sides: sides, event: events[3], winning_side: sides[1])

## dynamite 10/30/2019

event = Event.create(
  name: "AEW Dynamite",
  date: "2019-10-30",
  city: "Charleston, WV",
  venue: "Charleston Coliseum",
  program: :dynamite
)

SeedHelpers::create_tag_match("SCU (Frankie Kazarian & Scorpio Sky)", "Lucha Brothers", event, "AEW World Tag Team Championship")

#### dynamite 7/29/20

event = Event.create(
  name: "AEW Dynamite",
  date: "2020-07-20",
  city: "Jacksonville, FL",
  venue: "Daily's Place",
  program: :dynamite
)

SeedHelpers::create_singles_match("Cody", "Warhorse", event)
SeedHelpers::create_tag_match("Jurassic Express & Best Friends & Orange Cassidy", "Inner Circle", event)
SeedHelpers::create_tag_match("Kenny Omega & Adam Page", "Dark Order (Evil Uno & Stu Grayson)", event)
SeedHelpers::create_singles_match("Hikaru Shida", "Diamante", event)
SeedHelpers::create_tag_match("Darby Allin & Jon Moxley", "Brian Cage & Ricky Starks", event)

#### dynamite 8/5/20

event = Event.create(
  name: "AEW Dynamite",
  date: "2020-08-05",
  city: "Jacksonville, FL",
  venue: "Daily's Place",
  program: :dynamite
)

SeedHelpers::create_tag_match(
  "Dark Order (5 & 9 & Colt Cabana & Evil Uno & Stu Grayson & Brodie Lee)",
  "Kenny Omega & Adam Page & FTR & The Young Bucks",
  event
)


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

event = Event.create({
  name: "All Out 2020",
  date: "2020-09-05",
  city: "Jacksonville, FL",
  venue: "Daily's Place",
  program: :ppv,
  image_url: "https://d.newsweek.com/en/full/1631513/aew-all-out-2020-poster-moxley-mjf.jpg"
})

SeedHelpers::create_tag_match("FTR", "Kenny Omega & Adam Page", event, "AEW World Tag Team Championship")


### Full Gear 2020

event = Event.create({
  name: "Full Gear 2020",
  date: "2020-11-07",
  city: "Jacksonville, FL",
  venue: "Daily's Place",
  program: :ppv,
  image_url: "https://media.bleacherreport.com/f_auto,w_800,h_533,q_auto,c_fill/br-img-slides/004/417/775/8f11b66c6abe7470b9baa7f0752c5e32_crop_exact.jpg"
})

SeedHelpers::create_singles_match("Kenny Omega", "Jon Moxley", event, "AEW World Championship")
SeedHelpers::create_tag_match("The Young Bucks", "FTR", event, "AEW World Tag Team Championship")