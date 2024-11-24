class CreateItem < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :cost
      t.integer :fling_power
    end
  end
end
