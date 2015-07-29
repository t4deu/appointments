class Appointment < ActiveRecord::Base
  belongs_to :client
  belongs_to :service
  belongs_to :provider

  validates_associated :client, :service, :provider
  validates :start_at, :end_at, presence: true
end
