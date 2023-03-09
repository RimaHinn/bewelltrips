class Trip < ApplicationRecord
  belongs_to :user
  has_many :trip_categories
  has_many_attached :photos
end
