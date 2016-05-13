json.array!(@policy_heding_policy_sub_hedings) do |policy_heding_policy_sub_heding|
  json.extract! policy_heding_policy_sub_heding, :id, :sub_heading
  json.url policy_heding_policy_sub_heding_url(policy_heding_policy_sub_heding, format: :json)
end
