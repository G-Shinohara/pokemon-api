module Populate::Location
  def self.call
    locations = PokeApi.get(:location)

    locations.results.each do |location|
      next if Location.find_by(name: location.name).present?

      location = location.get

      new_location = Location.create(name: location.name)

      new_location.update(region: set_region(location))
    end
  end

  private

  def self.set_region(location)
    region = Region.find_by(name: location.region.name)

    if region.present?
      region
    else
      region = location.region.get

      new_region = Region.create(name: region.name)

      game_generation = GameGeneration.find_or_create_by(name: region.main_generation[:name])

      new_region.update(game_generation:)

      new_region
    end
  end
end