class Item < ApplicationRecord
  belongs_to :item_fling_effect
  belongs_to :item_category
end