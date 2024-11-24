class CreateGender < ActiveRecord::Migration[8.0]
  def change
    create_table :genders do |t|
      t.string :name
    end
  end
end
