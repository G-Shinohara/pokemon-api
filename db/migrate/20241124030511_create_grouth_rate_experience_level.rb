class CreateGrowthRateExperienceLevel < ActiveRecord::Migration[8.0]
  def change
    create_table :growth_rate_experience_levels do |t|
      t.integer :level
      t.integer :experience
    end
  end
end
