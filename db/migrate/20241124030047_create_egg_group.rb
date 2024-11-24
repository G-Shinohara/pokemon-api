class CreateEggGroup < ActiveRecord::Migration[8.0]
  def change
    create_table :egg_groups do |t|
      t.string :name
    end
  end
end
