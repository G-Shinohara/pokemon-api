class CreatePokemonSpecies < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemon_species do |t|
      t.string :name
      t.integer :order
      t.integer :gender_rate
      t.integer :capture_rate
      t.integer :base_happiness
      t.boolean :is_baby
      t.boolean :is_legendary
      t.boolean :is_mythical
      t.integer :hatch_counter
      t.boolean :has_gender_differences
      t.boolean :forms_switchable
    end
  end
end
