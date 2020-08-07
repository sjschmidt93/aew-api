class SeedHelpers
  def self.create_tag_team(name, is_official, wrestlers, sub_teams = [])
    tag_team = TagTeam.create(name: name, is_official: is_official)
    wrestlers.each do |wrestler|
      TagTeamMembership.create(tag_team: tag_team, wrestler: Wrestler.find_by(name: wrestler))
    end
    sub_teams.each do |sub_team|
      TagTeamSubTeamMembership.create(parent_team: tag_team, sub_team: TagTeam.find_by(name: sub_team))
    end
  end

  def self.create_singles_match(winner, loser, event, championship = nil)
    sides = Side.create([
      { competitor: Wrestler.find_by(name: winner) },
      { competitor: Wrestler.find_by(name: loser) }
    ])
    Match.create(sides: sides, event: event, winning_side: sides[0], championship: Championship.find_by(name: championship))
  end

  def self.create_tag_match(winner, loser, event, championship = nil)
    sides = Side.create([
      { competitor: TagTeam.find_by(name: winner) },
      { competitor: TagTeam.find_by(name: loser) }
    ])
    Match.create(sides: sides, event: event, winning_side: sides[0], championship: Championship.find_by(name: championship))
  end
end
