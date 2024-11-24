class AddRegionToGameGeneration < ActiveRecord::Migration[8.0]
  def change
    add_reference :game_generations, :region, foreign_key: true
  end
end
