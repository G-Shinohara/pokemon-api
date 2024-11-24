class AddMoveDamageClassToMove < ActiveRecord::Migration[8.0]
  def change
    add_reference :moves, :move_damage_class, foreign_key: true
  end
end
