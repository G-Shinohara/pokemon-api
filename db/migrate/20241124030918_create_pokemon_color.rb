class CreatePokemonColor < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemon_colors do |t|
      t.string :color
    end
  end
end
