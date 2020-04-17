class TagTeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :wrestlers

  def wrestlers
    ActiveModel::SerializableResource.new(object.wrestlers,  each_serializer: WrestlerSerializer)
  end

  has_many :matches, serializer: MatchSerializer
end
