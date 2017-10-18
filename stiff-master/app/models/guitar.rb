class Guitar < ApplicationRecord
  monetize :price_cents
  register_currency :eur
  belongs_to :body_wood
  belongs_to :user, optional: true
  belongs_to :shape
  belongs_to :neck_wood
  belongs_to :fret_wood
  belongs_to :head_shape
  belongs_to :pickup
  belongs_to :pickguard
  belongs_to :dexterity
  belongs_to :category
  belongs_to :finish
  belongs_to :color
  has_many :orders
  has_many :reviews
  acts_as_votable
  validates :name, presence: true

end
