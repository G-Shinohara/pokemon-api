class CreatePokemonForm < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemon_forms do |t|
      t.string :name
      t.integer :order
      t.boolean :is_default
      t.boolean :is_battle_only
      t.boolean :is_mega
      t.string :form_name
    end
  end
end
