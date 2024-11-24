class AddVersionGroupToPokemonForm < ActiveRecord::Migration[8.0]
  def change
    add_reference :pokemon_forms, :version_group, foreign_key: true
  end
end
