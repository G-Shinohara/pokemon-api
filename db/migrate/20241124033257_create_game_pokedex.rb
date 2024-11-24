class CreateGamePokedex < ActiveRecord::Migration[8.0]
  def change
    create_table :game_pokedexes do |t|
      t.string :name
      t.string :description
      t.boolean :is_main_series
    end
  end
end
