class CreateMoveAilment < ActiveRecord::Migration[8.0]
  def change
    create_table :move_ailments do |t|
      t.string :name
    end
  end
end
