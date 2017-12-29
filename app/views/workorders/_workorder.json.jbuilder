json.extract! workorder, :id, :location, :size, :crew_ID, :peoplenumber, :assign_equipment, :time, :status, :material_used, :cost, :created_at, :updated_at
json.url workorder_url(workorder, format: :json)
