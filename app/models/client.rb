class Client < ActiveRecord::Base
  validates :phone, :cellphone, inclusion: {in: 0..9}, length: {minimum: 7, maximum: 20}
  validates :email, format: /@/
  validates :name, :email, presence: true
end
