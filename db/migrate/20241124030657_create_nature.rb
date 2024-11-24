class CreateNature < ActiveRecord::Migration[8.0]
  def change
    create_table :natures do |t|
      t.string :name
    end
  end
end
