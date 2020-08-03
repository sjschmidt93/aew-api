championships = Championship.create([
  { name: "AEW World Championship", image_url: "https://i.imgur.com/5OOLdK7.png" },
  { name: "AEW World Tag Team Championship" },
  { name: "AEW Women's World Championship", image_url: "https://i.imgur.com/GFhjs9w.png" },
  { name: "AEW TNT Championship" }
])

# AEW World Championship
Reign.create([
  { start_date: "2019-08-31", end_date: "2020-02-29", competitor: Wrestler.find_by(name: "Chris Jericho"), championship: championships[0] },
  { start_date: "2020-02-29", competitor: Wrestler.find_by(name: "Jon Moxley"), championship: championships[0] }
])

# AEW World Tag Team Championship
Reign.create([
  { start_date: "2019-10-30", end_date: "2020-01-21", competitor: TagTeam.find_by(name: "SCU"), championship: championships[1] },
  { start_date: "2020-01-21", competitor: TagTeam.find_by(name: "Kenny Omega & Adam Page"), championship: championships[1] }
])

# AEW Women's World Championship
Reign.create([
  { start_date: "2019-10-02", end_date: "2020-02-12", competitor: Wrestler.find_by(name: "Riho"), championship: championships[2] },
  { start_date: "2020-02-12", end_date: "2020-05-23", competitor: Wrestler.find_by(name: "Nyla Rose"), championship: championships[2] },
  { start_date: "2020-05-23", competitor: Wrestler.find_by(name: "Hikaru Shida"), championship: championships[2] }
])

# AEW TNT Championship
Reign.create([
  { start_date: "2020-05-23", competitor: Wrestler.find_by(name: "Cody"), championship: championships[3] }
])