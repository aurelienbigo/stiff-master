class Review < ApplicationRecord
  belongs_to :guitar
  belongs_to :user, optional: true
  validates :comment, presence: true, allow_blank: false
end
