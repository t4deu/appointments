class Venue < ActiveRecord::Base
  validates :phone, :cellphone, numericality: {only_integer: true}, length: {minimum: 7, maximum: 20}
  validates :email, format: /@/
  validates :name, :zip, :address, presence: true

  def phone=(phone)
    super(phone.gsub(/\D/, ''))
  end

  def cellphone=(cellphone)
    super(cellphone.gsub(/\D/, ''))
  end

  def zip=(zip)
    super(zip.gsub(/\D/, ''))
  end
end
