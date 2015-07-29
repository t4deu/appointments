json.array!(@providers) do |provider|
  json.extract! provider, :id, :name, :email, :phone, :cellphone, :zapzap
  json.url provider_url(provider, format: :json)
end
