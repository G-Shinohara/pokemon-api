class AddFlingEffectToItem < ActiveRecord::Migration[8.0]
  def change
    add_reference :items, :item_fling_effect, foreign_key: true
  end
end
