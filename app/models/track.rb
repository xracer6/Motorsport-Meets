class Track < ApplicationRecord
  validates :name, presence: true
  validates :type, presence: true
  validates :length, presence: true
  validates :corners, presence: true
  validates :description, presence: true

  has_many :events
  
end