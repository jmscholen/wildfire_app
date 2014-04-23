json.array!(@locations) do |location|
  json.extract! location, :id, :accessible_by_ground_vehicle, :local_water, :humidity, :air_quality
  json.url location_url(location, format: :json)
end
