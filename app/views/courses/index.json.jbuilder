json.array!(@courses) do |course|
  json.extract! course, :id, :corporate_trainer, :name, :duration, :batch_starting_on, :fee, :highlights
  json.url course_url(course, format: :json)
end
