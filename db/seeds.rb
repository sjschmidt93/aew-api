# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

wrestlers = Wrestler.create([{ name: 'Jon Moxley' }, { name: 'Chris Jericho' }])
match = Match.create(date: "2020-02-28")
match.wrestlers = wrestlers