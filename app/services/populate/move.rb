module Populate::Move
  def self.call
    moves = PokeApi.get(:move)

    moves.results.each do |move|
      next if Move.find_by(name: move.name).present?

      move = move.get

      new_move = Move.create(
        name: move.name,
        accuracy: move.accuracy,
        effect_chance: move.effect_chance,
        power: move.power,
        pp: move.pp,
        priority: move.priority,
      )

      new_move.update(move_damage_class: set_damage_class(move))
      new_move.update(game_generation: set_game_generation(move))
      new_move.update(move_target: set_move_target(move))
      new_move.update(type: set_type(move))
    end
  end

  private

  def self.set_damage_class(move)
    move_damage_class = MoveDamageClass.find_by(name: move.damage_class.name)

    if move_damage_class.present?
      move_damage_class
    else
      damage_class= move.damage_class.get

      MoveDamageClass.create(
        name: damage_class.name,
        description: damage_class.descriptions.first.description
      )
    end
  end

  def self.set_game_generation(move)
    GameGeneration.find_or_create_by(name: move.generation.name)
  end

  def self.set_move_target(move)
    move_target = MoveTarget.find_by(name: move.target.name)

    if move_target.present?
      move_target
    else
      move_target = move.target.get

      MoveTarget.create(
        name: move_target.name,
        description: move_target.descriptions.first.description
      )
    end
  end

  def self.set_type(move)
    Type.find_or_create_by(name: move.type.name)
  end

end