class Order < ApplicationRecord
  monetize :price_cents
  belongs_to :user
  belongs_to :guitar
  validates :delivery_address, presence: true, allow_blank: false
  validates :price, presence: true
end
