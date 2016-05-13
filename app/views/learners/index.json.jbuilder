json.array!(@learners) do |learner|
  json.extract! learner, :id, :name, :email, :phone_number, :course_id, :course_type, :educational_status, :company_name
  json.url learner_url(learner, format: :json)
end
