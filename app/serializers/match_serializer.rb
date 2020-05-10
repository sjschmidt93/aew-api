class MatchSerializer < ActiveModel::Serializer
  attributes :id, :winner, :type
  has_many :wrestlers, each_serializer: WrestlerSerializer
  has_many :tag_teams, each_serializer: TagTeamSerializer
  belongs_to :event, serializer: EventSerializer
end
