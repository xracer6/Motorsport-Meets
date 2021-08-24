class Car < ApplicationRecord
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :color, presence: true
  validates :drivetrain, presence: true
  validates :description, presence: true

  belongs_to :user, optional: true

end