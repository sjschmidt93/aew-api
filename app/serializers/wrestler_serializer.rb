class WrestlerSerializer < ActiveModel::Serializer
  attributes :id, :name, :height, :weight, :num_wins, :num_losses, :image_url, :nickname, :division
  has_many :reigns, serializer: ReignSerializer
end
