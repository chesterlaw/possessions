json.array!(@possessions) do |possession|
  json.extract! possession, :id, :name, :description, :image_url, :got_rid_of_at, :got_rid_of_reason
  json.url possession_url(possession, format: :json)
end
