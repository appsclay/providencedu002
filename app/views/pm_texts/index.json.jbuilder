json.array!(@pm_texts) do |pm_text|
  json.extract! pm_text, :id, :bottom_text
  json.url pm_text_url(pm_text, format: :json)
end
