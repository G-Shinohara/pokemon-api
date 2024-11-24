class AddPokemonToPokemonForm < ActiveRecord::Migration[8.0]
  def change
    add_reference :pokemon_forms, :pokemon, foreign_key: true
  end
end
