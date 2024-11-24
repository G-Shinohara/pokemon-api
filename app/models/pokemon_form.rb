class PokemonForm < ApplicationRecord
  belongs_to :pokemon
  belongs_to :version_group
end