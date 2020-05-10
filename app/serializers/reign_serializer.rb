class ReignSerializer < ActiveModel::Serializer
  attributes :start_date, :end_date, :length, :championship

  belongs_to :competitor

  def include_competitor?
    @instance_options[:include_competitor]
  end

  # TODO: figure out why this doesn't work
  # def championship
  #   ActiveModel::SerializableResource.new(object.championship,  serializer: ChampionshipSerializer)
  # end
end
