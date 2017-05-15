class Engine < ApplicationRecord
  belongs_to :shop
  has_many :users, through: :booking
end
