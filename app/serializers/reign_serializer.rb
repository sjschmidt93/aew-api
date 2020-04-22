class ReignSerializer < ActiveModel::Serializer
  attributes :start_date, :end_date, :length, :championship

  def championship
    ActiveModel::SerializableResource.new(object.championship,  serializer: ChampionshipSerializer)
  end
end
