class CreateEncounterConditionValue < ActiveRecord::Migration[8.0]
  def change
    create_table :encounter_condition_values do |t|
      t.string :name
    end
  end
end
