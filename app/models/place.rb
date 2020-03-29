class Place < ApplicationRecord
  validates :name,
            presence: true,
            length: { maximum: 50 },
            uniqueness: true
  validates :address,
            presence: true,
            length: { maximum: 255 }
  validates :current_capacity,
            :maximum_capacity,
            presence: true
end
