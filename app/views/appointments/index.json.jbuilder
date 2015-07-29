json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :client_id, :provider_id, :service_id, :start_at, :end_at, :notes
  json.url appointment_url(appointment, format: :json)
end
