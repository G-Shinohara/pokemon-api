class CreateItemAttribute < ActiveRecord::Migration[8.0]
  def change
    create_table :item_attributes do |t|
      t.string :name
      t.string :description
    end
  end
end
