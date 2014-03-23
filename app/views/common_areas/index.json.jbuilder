json.array!(@common_areas) do |common_area|
  json.extract! common_area, :id, :type, :main_location, :sub_location
  json.url common_area_url(common_area, format: :json)
end
