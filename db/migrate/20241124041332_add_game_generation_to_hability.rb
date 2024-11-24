class AddGameGenerationToHability < ActiveRecord::Migration[8.0]
  def change
    add_reference :habilities, :game_generation, foreign_key: true
  end
end
