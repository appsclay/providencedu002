json.array!(@capsule_learners) do |capsule_learner|
  json.extract! capsule_learner, :id, :capsule_class_id, :name, :email, :phone_number, :educational_status, :company_name
  json.url capsule_learner_url(capsule_learner, format: :json)
end
