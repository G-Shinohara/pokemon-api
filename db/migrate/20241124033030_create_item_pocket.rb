class CreateItemPocket < ActiveRecord::Migration[8.0]
  def change
    create_table :item_pockets do |t|
      t.string :name
    end
  end
end
