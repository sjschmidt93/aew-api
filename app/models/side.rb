class Side < ApplicationRecord
  belongs_to :match
  belongs_to :competitor, :polymorphic => true
end
