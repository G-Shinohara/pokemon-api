class AddGrowthRateToPokemonSpecies < ActiveRecord::Migration[8.0]
  def change
    add_reference :pokemon_species, :growth_rate, foreign_key: true
  end
end
