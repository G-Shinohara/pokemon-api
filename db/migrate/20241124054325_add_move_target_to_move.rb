class AddMoveTargetToMove < ActiveRecord::Migration[8.0]
  def change
    add_reference :moves, :move_target, foreign_key: true
  end
end
