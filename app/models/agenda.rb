class Agenda < ActiveRecord::Base
  belongs_to :venue

  validates :start_hour, :end_hour, presence: true
end
