class TagTeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :wrestlers

  def wrestlers
    ActiveModel::SerializableResource.new(object.wrestlers,  each_serializer: WrestlerSerializer)
  end
end
