class CreatePokemonLocationArea < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemon_location_areas do |t|
      t.references :location_area
    end
  end
end
