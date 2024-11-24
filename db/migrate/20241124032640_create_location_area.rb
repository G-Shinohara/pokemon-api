class CreateLocationArea < ActiveRecord::Migration[8.0]
  def change
    create_table :location_areas do |t|
      t.string :name
      t.integer :game_index
    end
  end
end
