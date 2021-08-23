class Event < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :location, null: false
  validates :organizer, null: false

  has_many :users
end