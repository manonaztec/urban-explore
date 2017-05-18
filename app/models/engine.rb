class Engine < ApplicationRecord
  belongs_to :shop
  belongs_to :category
  has_many :bookings
  has_many :users, through: :booking

end
