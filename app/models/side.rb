class Side < ApplicationRecord
  belongs_to :match
  belongs_to :competitor, :polymorphic => true

  #has_and_belongs_to_many :wrestlers
end
