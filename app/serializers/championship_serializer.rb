class ChampionshipSerializer < ActiveModel::Serializer
  attributes :name, :image_url, :reigns

  def reigns
    ActiveModel::SerializableResource.new(object.reigns,  each_serializer: ChampionshipReignSerializer)
  end
end

class ChampionshipReignSerializer < ActiveModel::Serializer
  attributes :start_date, :end_date, :length

  belongs_to :competitor
end
