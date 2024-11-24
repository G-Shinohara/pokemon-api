class AddIncreasedStatToNature < ActiveRecord::Migration[8.0]
  def change
    add_reference :natures, :increased_stat, foreign_key: { to_table: :stats }
  end
end
