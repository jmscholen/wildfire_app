json.array!(@wild_fires) do |wild_fire|
  json.extract! wild_fire, :id, :firefighters_deployed, :hazard_level, :location_id
  json.url wild_fire_url(wild_fire, format: :json)
end
