class CreateVersionGroup < ActiveRecord::Migration[8.0]
  def change
    create_table :version_groups do |t|
      t.string :name
      t.integer :order
    end
  end
end
