class TagTeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :wrestlers, :is_official, :sub_teams

  def wrestlers
    ActiveModel::SerializableResource.new(object.wrestlers,  each_serializer: WrestlerSerializer)
  end

  def sub_teams
    ActiveModel::SerializableResource.new(object.sub_teams,  each_serializer: TagTeamSerializer)
  end
end
