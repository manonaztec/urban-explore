class Category < ApplicationRecord
  has_many :engines
  has_attachment :photo
end
