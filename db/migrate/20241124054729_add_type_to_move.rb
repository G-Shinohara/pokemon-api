class AddTypeToMove < ActiveRecord::Migration[8.0]
  def change
    add_reference :moves, :type, foreign_key: true
  end
end
