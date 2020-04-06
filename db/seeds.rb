# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

event = Event.create(name: "AEW Revolution", date: "2020-02-28", city: "Chicago, IL", venue: "Wintrust Arena", event_type: :ppv)

wrestlers = Wrestler.create([{ name: "Jon Moxley" }, { name: "Chris Jericho" }])

Match.create(winner_ids: [1], wrestlers: wrestlers, event: event)

omega_hangman = Wrestler.create([
  { name: "Kenny Omega" },
  { name: "Hangman Page" }
])
bucks = Wrestler.create([
  { name: "Nick Jackson" },
  { name: "Matt Jackson" }
])
scu = Wrestler.create([
  { name: "Frankie Kazarian" },
  { name: "Scorpio Sky" }
])

TagTeam.create([
  { name: "Kenny Omega and Adam Page", wrestlers: omega_hangman },
  { name: "The Young Bucks", wrestlers: bucks },
  { name: "SCU", wrestlers: scu }
])

Match.create(winner_ids: [3, 4], tag_teams: TagTeam.find([1,2]), match_type: :tag, event: event)

championship = Championship.create(name: "AEW World Championship")

reigns = Reign.create([
  { start_date: "2019-08-31", end_date: "2020-02-20", wrestler: Wrestler.find_by(name: "Chris Jericho"), championship: championship },
  { start_date: "2020-02-29", wrestler: Wrestler.find_by(name: "Jon Moxley"), championship: championship }
])

championship.reigns = reigns

championship = Championship.create(name: "World Tag Team Championship")

reigns = Reign.create([
  { start_date: "2019-10-30", end_date: "2020-01-21", tag_team: TagTeam.find_by(name: "SCU"), championship: championship },
  { start_date: "2020-01-21", tag_team: TagTeam.find_by(name: "Kenny Omega and Adam Page"), championship: championship }
])

championship.reigns = reigns