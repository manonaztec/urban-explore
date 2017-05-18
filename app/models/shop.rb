class Shop < ApplicationRecord
  has_many :engines

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
