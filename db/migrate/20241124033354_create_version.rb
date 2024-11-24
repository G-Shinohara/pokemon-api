class CreateVersion < ActiveRecord::Migration[8.0]
  def change
    create_table :versions do |t|
      t.string :name
    end
  end
end
