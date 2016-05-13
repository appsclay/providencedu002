json.array!(@course_fee_structures) do |course_fee_structure|
  json.extract! course_fee_structure, :id, :master_type, :type, :amount, :timing, :additional_tnc
  json.url course_fee_structure_url(course_fee_structure, format: :json)
end
