json.array!(@private_areas) do |private_area|
  json.extract! private_area, :id, :type, :main_location, :sub_location
  json.url private_area_url(private_area, format: :json)
end
