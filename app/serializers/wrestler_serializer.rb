class WrestlerSerializer < ActiveModel::Serializer
  attributes :id, :name, :wins, :losses, :image_url, :nickname
end
