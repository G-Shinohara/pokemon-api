class CreatePokemonCharacteristc < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemon_characteristcs do |t|
      t.integer :gene_modulo
      t.string :possible_values
      t.string :description
    end
  end
end
