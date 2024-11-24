class CreateEncounterMethod < ActiveRecord::Migration[8.0]
  def change
    create_table :encounter_methods do |t|
      t.string :name
      t.integer :order
    end
  end
end
