class AddEvolveFromSpeciesPokemonSpecies < ActiveRecord::Migration[8.0]
  def change
    add_reference :pokemon_species, :evolve_from_species, foreign_key: { to_table: :pokemon_species }
  end
end
