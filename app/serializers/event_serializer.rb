class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :city, :venue, :image_url, :program
end 
