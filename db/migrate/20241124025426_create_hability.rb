class CreateHability < ActiveRecord::Migration[8.0]
  def change
    create_table :habilities do |t|
      t.string :name
    end
  end
end