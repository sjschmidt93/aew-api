class WrestlerSerializer < ActiveModel::Serializer
  attributes :id, :name, :num_wins, :num_losses, :image_url, :nickname, :divison
end
