class PokemonSpecies < ApplicationRecord
  belongs_to :growth_rate
  belongs_to :pokemon_color
  belongs_to :pokemon_shape
  belongs_to :evolve_from_species, optional: true
  belongs_to :game_generation
end