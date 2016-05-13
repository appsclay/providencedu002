json.array!(@policy_hedings) do |policy_heding|
  json.extract! policy_heding, :id, :heading
  json.url policy_heding_url(policy_heding, format: :json)
end
