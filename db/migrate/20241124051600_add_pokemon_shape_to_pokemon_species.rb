class AddPokemonShapeToPokemonSpecies < ActiveRecord::Migration[8.0]
  def change
    add_reference :pokemon_species, :pokemon_shape, foreign_key: true
  end
end
