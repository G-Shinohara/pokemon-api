class CreateItemCategory < ActiveRecord::Migration[8.0]
  def change
    create_table :item_categories do |t|
      t.string :name
    end
  end
end
