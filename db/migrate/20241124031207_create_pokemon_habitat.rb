class CreatePokemonHabitat < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemon_habitats do |t|
      t.string :name
    end
  end
end
