class WrestlerSerializer < ActiveModel::Serializer
  attributes :id, :name, :wins, :losses
end
