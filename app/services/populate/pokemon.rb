module Populate::Pokemon
  def self.call
    pokemons = PokeApi.get(:pokemon)

    pokemons.results.each do |pokemon|
      next if Pokemon.find_by(name: pokemon.name).present?

      pokemon = pokemon.get

      new_pokemon = Pokemon.create(name: pokemon.name, base_experience: pokemon.base_experience, height: pokemon.height, is_default: pokemon.is_default, order: pokemon.order, weight: pokemon.weight)

      pokemon_species = PokemonSpecies.find_by(name: pokemon.species.name)

      if pokemon_species.present?
        new_pokemon.update(pokemon_species:)
      else
        pokemon_species = pokemon.species.get

        new_pokemon.update(pokemon_species: create_pokemon_species(pokemon_species))
      end
    end
  end

  private

  def self.create_pokemon_species(pokemon_species)
    new_pokemon_species = PokemonSpecies.create(
      name: pokemon_species.name,
      order: pokemon_species.order,
      gender_rate: pokemon_species.gender_rate,
      capture_rate: pokemon_species.capture_rate,
      base_happiness: pokemon_species.base_happiness,
      is_baby: pokemon_species.is_baby,
      hatch_counter: pokemon_species.hatch_counter,
      has_gender_differences: pokemon_species.has_gender_differences,
      forms_switchable: pokemon_species.forms_switchable,
    )

    new_pokemon_species.update(pokemon_color: set_pokemon_color(pokemon_species))
    new_pokemon_species.update(growth_rate: set_growth_rate(pokemon_species))
    new_pokemon_species.update(pokemon_shape: set_pokemon_shape(pokemon_species))
    new_pokemon_species.update(game_generation: game_generation(pokemon_species))

    new_pokemon_species
  end

  def self.set_pokemon_color(pokemon_species)
    PokemonColor.find_or_create_by(color: pokemon_species.color.name)
  end

  def self.set_growth_rate(pokemon_species)
    pokemon_growth_rate = GrowthRate.find_by(name: pokemon_species.growth_rate.name)

    if pokemon_growth_rate.present?
      pokemon_growth_rate
    else
      pokemon_growth_rate = pokemon_species.growth_rate.get

      GrowthRate.create(name: pokemon_growth_rate.name, description: pokemon_growth_rate.descriptions.first.description, formula: pokemon_growth_rate.formula)
    end
  end

  def self.set_pokemon_shape(pokemon_species)
    PokemonShape.find_or_create_by(name: pokemon_species.shape.name)
  end

  def self.game_generation(pokemon_species)
    GameGeneration.find_or_create_by(name: pokemon_species.generation.name)
  end
end