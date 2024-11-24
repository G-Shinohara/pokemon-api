class AddPokemonSpeciesToPokemon < ActiveRecord::Migration[8.0]
  def change
    add_reference :pokemons, :pokemon_species, foreign_key: true
  end
end
