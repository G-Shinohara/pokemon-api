class AddGameRegionToPokedex < ActiveRecord::Migration[8.0]
  def change
    add_reference :game_pokedexes, :region, foreign_key: true
  end
end
