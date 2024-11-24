class CreateItemFlingEffect < ActiveRecord::Migration[8.0]
  def change
    create_table :item_fling_effects do |t|
      t.string :name
    end
  end
end
