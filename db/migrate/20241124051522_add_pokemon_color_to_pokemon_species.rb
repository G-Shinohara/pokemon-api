class AddPokemonColorToPokemonSpecies < ActiveRecord::Migration[8.0]
  def change
    add_reference :pokemon_species, :pokemon_color, foreign_key: true
  end
end
