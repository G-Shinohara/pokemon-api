class AddRegionToLocation < ActiveRecord::Migration[8.0]
  def change
    add_reference :locations, :region, foreign_key: :true
  end
end
