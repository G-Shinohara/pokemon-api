class AddGameGenerationToPokemonSpecies < ActiveRecord::Migration[8.0]
  def change
    add_reference :pokemon_species, :game_generation, foreign_key: true
  end
end
