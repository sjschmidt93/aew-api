# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

event = Event.create(name: "AEW Revolution", date: "2020-02-28", city: "Chicago, IL", venue: "Wintrust Arena", event_type: :ppv)

wrestlers = Wrestler.create([{ name: "Jon Moxley" }, { name: "Chris Jericho" }])

Match.create(winner_ids: [1], wrestlers: wrestlers, event: event)

wrestlers = Wrestler.create([
  { name: "Kenny Omega" },
  { name: "Hangman Page" },
  { name: "Nick Jackson" },
  { name: "Matt Jackson" }
])

Match.create(winner_ids: [3, 4], wrestlers: wrestlers, match_type: :tag, event: event)

championship = Championship.create(name: "AEW World Championship")

reigns = Reign.create([
  { start_date: "2019-08-31", end_date: "2020-02-20", wrestlers: Wrestler.where(name: 'Chris Jericho') },
  { start_date: "2020-02-29", wrestlers: Wrestler.where(name: 'Jon Moxley') }
])

championship.reigns = reigns

championship = Championship.create(name: "World Tag Team Championship")

