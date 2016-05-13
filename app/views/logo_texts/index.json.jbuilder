json.array!(@logo_texts) do |logo_text|
  json.extract! logo_text, :id, :logo_bottom_text, :url
  json.url logo_text_url(logo_text, format: :json)
end
