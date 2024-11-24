class CreateMoveTarget < ActiveRecord::Migration[8.0]
  def change
    create_table :move_targets do |t|
      t.string :name
      t.string :description
    end
  end
end
