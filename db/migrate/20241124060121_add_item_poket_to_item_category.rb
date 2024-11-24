class AddItemPoketToItemCategory < ActiveRecord::Migration[8.0]
  def change
    add_reference :item_categories, :item_pocket, foreign_key: true
  end
end
