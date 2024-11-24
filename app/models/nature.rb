class Nature < ApplicationRecord
  belongs_to :decreased_stat, class_name: 'Stat'
  belongs_to :increased_stat, class_name: 'Stat'
end