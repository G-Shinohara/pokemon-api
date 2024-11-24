class Populate::Item
  def self.call
    items = PokeApi.get(:item)

    items.results.each do |item|
      next if Item.find_by(name: item.name).present?

      item = item.get

      new_item = Item.create(
        name: item.name,
        cost: item.cost,
        fling_power: item.fling_power,
      )

      new_item.update(item_fling_effect: set_fling_effect(item)) if item.fling_effect.present?
      new_item.update(item_category: set_item_category(item))
    end
  end

  def self.set_fling_effect(item)
    ItemFlingEffect.find_or_create_by(name: item.fling_effect.name)
  end

  def self.set_item_category(item)
    item_category = ItemCategory.find_by(name: item.category.name)

    if item_category.present?
      item_category
    else
      item_category = item.category.get

      new_item_category = ItemCategory.create(name: item_category.name)

      item_pocket = ItemPocket.find_or_create_by(name: item_category.pocket.name)

      new_item_category.update(item_pocket:)

      new_item_category
    end
  end
end
