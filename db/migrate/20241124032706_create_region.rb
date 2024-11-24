class CreateRegion < ActiveRecord::Migration[8.0]
  def change
    create_table :regions do |t|
      t.string :name
    end
  end
end
