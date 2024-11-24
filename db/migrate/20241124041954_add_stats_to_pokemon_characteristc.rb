class AddStatsToPokemonCharacteristc < ActiveRecord::Migration[8.0]
  def change
    add_reference :pokemon_characteristcs, :stat, foreign_key: true
  end
end
