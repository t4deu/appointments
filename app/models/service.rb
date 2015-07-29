class Service < ActiveRecord::Base
  belongs_to :venue
  has_and_belongs_to_many :providers

  validates_associated :venue
  validates :price, :duration, numericality: true
  validates :name, :duration, :price, :venue_id, presence: true
end
