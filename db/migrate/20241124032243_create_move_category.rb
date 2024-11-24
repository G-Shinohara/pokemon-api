class CreateMoveCategory < ActiveRecord::Migration[8.0]
  def change
    create_table :move_categories do |t|
      t.string :name
      t.string :description
    end
  end
end
