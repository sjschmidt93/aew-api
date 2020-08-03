class SeedHelpers
  def self.create_singles_match(winner, loser, event)
    sides = Side.create([
      { competitor: Wrestler.find_by(name: winner) },
      { competitor: Wrestler.find_by(name: loser) }
    ])
    Match.create(sides: sides, event: event, winning_side: sides[0])
  end
end
