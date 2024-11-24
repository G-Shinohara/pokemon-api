class CreateGameGeneration < ActiveRecord::Migration[8.0]
  def change
    create_table :game_generations do |t|
      t.string :name
    end
  end
end
