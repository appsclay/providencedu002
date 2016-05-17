json.array!(@capsule_classes) do |capsule_class|
  json.extract! capsule_class, :id, :title, :starting_date, :duration, :benifits, :guest_lecturer, :display
  json.url capsule_class_url(capsule_class, format: :json)
end
