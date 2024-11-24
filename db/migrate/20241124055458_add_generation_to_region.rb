class AddGenerationToRegion < ActiveRecord::Migration[8.0]
  def change
    add_reference :regions, :game_generation, foreign_key: true
  end
end
