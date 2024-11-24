class CreateGrowthRate < ActiveRecord::Migration[8.0]
  def change
    create_table :growth_rates do |t|
      t.string :name
      t.string :description
      t.string :formula
    end
  end
end
