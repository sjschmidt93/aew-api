class MatchSerializer < ActiveModel::Serializer
  attributes :id, :winner, :winning_team, :match_type
  has_many :wrestlers, serializer: WrestlerSerializer
  has_many :tag_teams, serializer: TagTeamSerializer
  has_one :event, serializer: EventSerializer
end
