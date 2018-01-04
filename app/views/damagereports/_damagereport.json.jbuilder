json.extract! damagereport, :id, :name, :address, :tel, :type, :cost, :created_at, :updated_at
json.url damagereport_url(damagereport, format: :json)
