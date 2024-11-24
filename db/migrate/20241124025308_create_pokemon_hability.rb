class CreatePokemonHability < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemon_habilities do |t|
      t.boolean :is_hidden
      t.integer :slot
    end
  end
end
