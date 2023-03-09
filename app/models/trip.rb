class Trip < ApplicationRecord
  belongs_to :user

  has_many_attached :photos

  CATEGORIES = ["Hiking", "Yoga", "Nutrition", "Medical Spa", "Spa", "Fitness"]
end
