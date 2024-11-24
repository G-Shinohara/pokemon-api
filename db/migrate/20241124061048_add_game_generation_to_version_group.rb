class AddGameGenerationToVersionGroup < ActiveRecord::Migration[8.0]
  def change
    add_reference :version_groups, :game_generation, foreign_key: true
  end
end
