class TagTeamSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :wrestlers, serializer: WrestlerSerializer
  has_many :matches, serializer: MatchSerializer
end
