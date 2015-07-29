json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :email, :phone, :cellphone, :zapzap, :address, :city, :state, :zip
  json.url venue_url(venue, format: :json)
end
