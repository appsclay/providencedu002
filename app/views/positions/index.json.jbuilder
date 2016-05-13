json.array!(@positions) do |position|
  json.extract! position, :id, :rank, :position_name
  json.url position_url(position, format: :json)
end
