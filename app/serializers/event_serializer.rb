class EventSerializer < ActiveModel::Serializer
  attributes :name, :date, :city, :venue
end