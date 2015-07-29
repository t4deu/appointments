json.array!(@services) do |service|
  json.extract! service, :id, :venue_id, :name, :description, :duration, :price
  json.url service_url(service, format: :json)
end
