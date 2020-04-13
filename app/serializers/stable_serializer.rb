class StableSerializer < ActiveModel::Serializer
  attributes :id,
  has_many :wrestlers, serializer: WrestlerSerializer
end
