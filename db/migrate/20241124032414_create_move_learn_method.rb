class CreateMoveLearnMethod < ActiveRecord::Migration[8.0]
  def change
    create_table :move_learn_methods do |t|
      t.string :name
      t.string :description
    end
  end
end
