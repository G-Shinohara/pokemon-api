class Move < ApplicationRecord
  belongs_to :game_generation
  belongs_to :move_damage_class
  belongs_to :move_target
  belongs_to :type
end