json.array!(@fish_species) do |fish_specy|
  json.extract! fish_specy, :id
  json.url fish_specy_url(fish_specy, format: :json)
end
