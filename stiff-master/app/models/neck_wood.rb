class NeckWood < ApplicationRecord
  has_many :guitars
  monetize :price_cents  # or :price_pennies
end
