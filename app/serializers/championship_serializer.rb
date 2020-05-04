class ChampionshipSerializer < ActiveModel::Serializer
  attributes :name, :image_url, :reigns, :matches

  def reigns
    ActiveModel::SerializableResource.new(object.reigns, each_serializer: ChampionshipReignSerializer)
  end

  def matches
    ActiveModel::SerializableResource.new(object.matches, each_serializer: MatchSerializer)
  end
end

class ChampionshipReignSerializer < ActiveModel::Serializer
  attributes :start_date, :end_date, :length

  belongs_to :competitor, serializer: CompetitorSerializer
end
