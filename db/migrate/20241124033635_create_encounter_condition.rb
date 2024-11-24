class CreateEncounterCondition < ActiveRecord::Migration[8.0]
  def change
    create_table :encounter_conditions do |t|
      t.string :name
    end
  end
end
