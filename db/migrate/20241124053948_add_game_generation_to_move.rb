class AddGameGenerationToMove < ActiveRecord::Migration[8.0]
  def change
    add_reference :moves, :game_generation, foreign_key: true
  end
end
