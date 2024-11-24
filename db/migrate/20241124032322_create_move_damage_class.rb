class CreateMoveDamageClass < ActiveRecord::Migration[8.0]
  def change
    create_table :move_damage_classes do |t|
      t.string :name
      t.string :description
    end
  end
end
