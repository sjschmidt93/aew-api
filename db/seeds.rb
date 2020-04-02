# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

wrestlers = Wrestler.create([{ name: "Jon Moxley" }, { name: "Chris Jericho" }])

date = "2020-02-28"
city = "Chicago, IL"
venue = "Wintrust Arena"

Match.create(date: date, city: city, venue: venue, winner_ids: [1], wrestlers: wrestlers)

wrestlers = Wrestler.create([
  { name: "Kenny Omega"},
  { name: "Hangman Page"},
  { name: "Nick Jackson"},
  { name: "Matt JAckson"}
])

Match.create(date: date, city: city, venue: venue, winner_ids: [3, 4], wrestlers: wrestlers, match_type: :tag)
