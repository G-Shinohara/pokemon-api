class CreateType < ActiveRecord::Migration[8.0]
  def change
    create_table :types do |t|
      t.string :name
    end
  end
end
