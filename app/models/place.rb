class Place < ApplicationRecord
  belongs_to :location
  default_scope -> { order(current_capacity: :asc) }
  validates :name,
            presence: true,
            length: { maximum: 50 },
            uniqueness: true
  validates :address,
            presence: true,
            length: { maximum: 255 }
  validates :current_capacity,
            :maximum_capacity,
            :location_id,
            presence: true
end
