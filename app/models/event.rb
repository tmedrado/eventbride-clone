class Event < ApplicationRecord
  has_many :participations
  has_many :users, :through => :participations

  validates :start_date, presence: true
  validates :duration, presence: true
  validates :title, presence: true
  validates :title, length: {minimum:5, maximum:140}
  validates :description, length: {minimum:20, maximum:1000}
  validates :price, length: {minimum:1, maximum:1000}
  validates :location, presence: true
end
