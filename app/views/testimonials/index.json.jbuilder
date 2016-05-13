json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :name, :content, :avatar
  json.url testimonial_url(testimonial, format: :json)
end
