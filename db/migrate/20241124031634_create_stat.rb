class CreateStat < ActiveRecord::Migration[8.0]
  def change
    create_table :stats do |t|
      t.string :name
      t.boolean :is_battle_only
      t.integer :game_index
    end
  end
end
