class TagTeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :wrestlers, :is_official, :naming_convention

  def wrestlers
    ActiveModel::SerializableResource.new(object.wrestlers,  each_serializer: WrestlerSerializer)
  end
end
