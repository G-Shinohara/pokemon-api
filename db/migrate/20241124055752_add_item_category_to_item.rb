class AddItemCategoryToItem < ActiveRecord::Migration[8.0]
  def change
    add_reference :items, :item_category, foreign_key: true
  end
end
