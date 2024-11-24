class AddConditionToEncounterConditionValues < ActiveRecord::Migration[8.0]
  def change
    add_reference :encounter_condition_values, :encounter_condition, foreign_key: true
  end
end
