# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_11_24_061301) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "egg_groups", force: :cascade do |t|
    t.string "name"
  end

  create_table "encounter_condition_values", force: :cascade do |t|
    t.string "name"
    t.bigint "encounter_condition_id"
    t.index ["encounter_condition_id"], name: "index_encounter_condition_values_on_encounter_condition_id"
  end

  create_table "encounter_conditions", force: :cascade do |t|
    t.string "name"
  end

  create_table "encounter_methods", force: :cascade do |t|
    t.string "name"
    t.integer "order"
  end

  create_table "game_generations", force: :cascade do |t|
    t.string "name"
    t.bigint "region_id"
    t.index ["region_id"], name: "index_game_generations_on_region_id"
  end

  create_table "game_pokedexes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "is_main_series"
    t.bigint "region_id"
    t.index ["region_id"], name: "index_game_pokedexes_on_region_id"
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
  end

  create_table "growth_rate_experience_levels", force: :cascade do |t|
    t.integer "level"
    t.integer "experience"
  end

  create_table "growth_rates", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "formula"
  end

  create_table "habilities", force: :cascade do |t|
    t.string "name"
    t.bigint "game_generation_id"
    t.index ["game_generation_id"], name: "index_habilities_on_game_generation_id"
  end

  create_table "item_attributes", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "item_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "item_pocket_id"
    t.index ["item_pocket_id"], name: "index_item_categories_on_item_pocket_id"
  end

  create_table "item_fling_effects", force: :cascade do |t|
    t.string "name"
  end

  create_table "item_pockets", force: :cascade do |t|
    t.string "name"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.integer "fling_power"
    t.bigint "item_fling_effect_id"
    t.bigint "item_category_id"
    t.index ["item_category_id"], name: "index_items_on_item_category_id"
    t.index ["item_fling_effect_id"], name: "index_items_on_item_fling_effect_id"
  end

  create_table "location_areas", force: :cascade do |t|
    t.string "name"
    t.integer "game_index"
    t.bigint "location_id"
    t.index ["location_id"], name: "index_location_areas_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.bigint "region_id"
    t.index ["region_id"], name: "index_locations_on_region_id"
  end

  create_table "move_ailments", force: :cascade do |t|
    t.string "name"
  end

  create_table "move_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "move_damage_classes", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "move_learn_methods", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "move_targets", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "moves", force: :cascade do |t|
    t.string "name"
    t.integer "accuracy"
    t.integer "pp"
    t.integer "priority"
    t.integer "power"
    t.integer "effect_chance"
    t.bigint "game_generation_id"
    t.bigint "move_damage_class_id"
    t.bigint "move_target_id"
    t.bigint "type_id"
    t.index ["game_generation_id"], name: "index_moves_on_game_generation_id"
    t.index ["move_damage_class_id"], name: "index_moves_on_move_damage_class_id"
    t.index ["move_target_id"], name: "index_moves_on_move_target_id"
    t.index ["type_id"], name: "index_moves_on_type_id"
  end

  create_table "natures", force: :cascade do |t|
    t.string "name"
    t.bigint "decreased_stat_id"
    t.bigint "increased_stat_id"
    t.index ["decreased_stat_id"], name: "index_natures_on_decreased_stat_id"
    t.index ["increased_stat_id"], name: "index_natures_on_increased_stat_id"
  end

  create_table "pokemon_characteristcs", force: :cascade do |t|
    t.integer "gene_modulo"
    t.string "possible_values"
    t.string "description"
    t.bigint "stat_id"
    t.index ["stat_id"], name: "index_pokemon_characteristcs_on_stat_id"
  end

  create_table "pokemon_colors", force: :cascade do |t|
    t.string "color"
  end

  create_table "pokemon_forms", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.boolean "is_default"
    t.boolean "is_battle_only"
    t.boolean "is_mega"
    t.string "form_name"
    t.bigint "pokemon_id"
    t.bigint "version_group_id"
    t.index ["pokemon_id"], name: "index_pokemon_forms_on_pokemon_id"
    t.index ["version_group_id"], name: "index_pokemon_forms_on_version_group_id"
  end

  create_table "pokemon_habilities", force: :cascade do |t|
    t.boolean "is_hidden"
    t.integer "slot"
  end

  create_table "pokemon_habitats", force: :cascade do |t|
    t.string "name"
  end

  create_table "pokemon_location_areas", force: :cascade do |t|
    t.bigint "location_area_id"
    t.index ["location_area_id"], name: "index_pokemon_location_areas_on_location_area_id"
  end

  create_table "pokemon_shapes", force: :cascade do |t|
    t.string "name"
  end

  create_table "pokemon_species", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.integer "gender_rate"
    t.integer "capture_rate"
    t.integer "base_happiness"
    t.boolean "is_baby"
    t.boolean "is_legendary"
    t.boolean "is_mythical"
    t.integer "hatch_counter"
    t.boolean "has_gender_differences"
    t.boolean "forms_switchable"
    t.bigint "growth_rate_id"
    t.bigint "pokemon_color_id"
    t.bigint "pokemon_shape_id"
    t.bigint "evolve_from_species_id"
    t.bigint "game_generation_id"
    t.index ["evolve_from_species_id"], name: "index_pokemon_species_on_evolve_from_species_id"
    t.index ["game_generation_id"], name: "index_pokemon_species_on_game_generation_id"
    t.index ["growth_rate_id"], name: "index_pokemon_species_on_growth_rate_id"
    t.index ["pokemon_color_id"], name: "index_pokemon_species_on_pokemon_color_id"
    t.index ["pokemon_shape_id"], name: "index_pokemon_species_on_pokemon_shape_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "base_experience"
    t.integer "height"
    t.boolean "is_default"
    t.integer "order"
    t.integer "weight"
    t.bigint "pokemon_species_id"
    t.index ["pokemon_species_id"], name: "index_pokemons_on_pokemon_species_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.bigint "game_generation_id"
    t.index ["game_generation_id"], name: "index_regions_on_game_generation_id"
  end

  create_table "stats", force: :cascade do |t|
    t.string "name"
    t.boolean "is_battle_only"
    t.integer "game_index"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
  end

  create_table "version_groups", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.bigint "game_generation_id"
    t.index ["game_generation_id"], name: "index_version_groups_on_game_generation_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string "name"
    t.bigint "version_group_id"
    t.index ["version_group_id"], name: "index_versions_on_version_group_id"
  end

  add_foreign_key "encounter_condition_values", "encounter_conditions"
  add_foreign_key "game_generations", "regions"
  add_foreign_key "game_pokedexes", "regions"
  add_foreign_key "habilities", "game_generations"
  add_foreign_key "item_categories", "item_pockets"
  add_foreign_key "items", "item_categories"
  add_foreign_key "items", "item_fling_effects"
  add_foreign_key "location_areas", "locations"
  add_foreign_key "locations", "regions"
  add_foreign_key "moves", "game_generations"
  add_foreign_key "moves", "move_damage_classes"
  add_foreign_key "moves", "move_targets"
  add_foreign_key "moves", "types"
  add_foreign_key "natures", "stats", column: "decreased_stat_id"
  add_foreign_key "natures", "stats", column: "increased_stat_id"
  add_foreign_key "pokemon_characteristcs", "stats"
  add_foreign_key "pokemon_forms", "pokemons"
  add_foreign_key "pokemon_forms", "version_groups"
  add_foreign_key "pokemon_species", "game_generations"
  add_foreign_key "pokemon_species", "growth_rates"
  add_foreign_key "pokemon_species", "pokemon_colors"
  add_foreign_key "pokemon_species", "pokemon_shapes"
  add_foreign_key "pokemon_species", "pokemon_species", column: "evolve_from_species_id"
  add_foreign_key "pokemons", "pokemon_species", column: "pokemon_species_id"
  add_foreign_key "regions", "game_generations"
  add_foreign_key "version_groups", "game_generations"
  add_foreign_key "versions", "version_groups"
end
