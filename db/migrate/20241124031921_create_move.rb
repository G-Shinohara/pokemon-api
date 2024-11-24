class CreateMove < ActiveRecord::Migration[8.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :accuracy
      t.integer :pp
      t.integer :priority
      t.integer :power
      t.integer :effect_chance
    end
  end
end
