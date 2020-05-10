class StableSerializer < ActiveModel::Serializer
  attributes :id
  has_many :wrestlers, each_serializer: WrestlerSerializer
end
