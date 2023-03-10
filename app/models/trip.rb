class Trip < ApplicationRecord
  belongs_to :user

  has_many_attached :photos

  CATEGORIES = ["Ayurveda", "Hiking", "Yoga", "Meditation", "Nutrition", "Medical Spa", "Spa", "Fitness", "General Wellness"]
end
