class CreatePokemonShape < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemon_shapes do |t|
      t.string :name
    end
  end
end
