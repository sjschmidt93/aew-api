class MatchSerializer < ActiveModel::Serializer
  attributes :id, :match_type
  has_many :wrestlers, serializer: WrestlerSerializer
  has_many :tag_teams, serializer: TagTeamSerializer
  has_one :event, serializer: EventSerializer

  def attributes(*args)
    hash = super
    wrestler_id = @instance_options[:wrestler_id]
    if wrestler_id.present? && object.winning_side_id.present?
      hash[:is_winner] = object.winning_side.competitor.kind_of?(Wrestler) && object.winning_side_id == wrestler_id.to_i
    end
    hash
  end
end
