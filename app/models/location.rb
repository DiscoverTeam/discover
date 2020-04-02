class Location < ApplicationRecord
  has_many :places
  validates :city,
            presence: true,
            length: { maximum: 20 }
  validates :area,
            presence: true,
            length: { maximum: 20 }

  def feed
    Place.where("location_id = ?", id)
  end

end
