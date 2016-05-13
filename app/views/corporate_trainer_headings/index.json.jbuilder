json.array!(@corporate_trainer_headings) do |corporate_trainer_heading|
  json.extract! corporate_trainer_heading, :id, :heading
  json.url corporate_trainer_heading_url(corporate_trainer_heading, format: :json)
end
