json.array!(@position_requirement_categories) do |position_requirement_category|
  json.extract! position_requirement_category, :id, :rank, :position_id, :requirement_name, :role_and_responsibilities, :what_we_are_looking_for, :hr_email, :hr_number
  json.url position_requirement_category_url(position_requirement_category, format: :json)
end
