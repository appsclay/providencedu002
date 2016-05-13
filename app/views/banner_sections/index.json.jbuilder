json.array!(@banner_sections) do |banner_section|
  json.extract! banner_section, :id, :banner_img, :banner_heading, :banner_button_text, :banner_button_url
  json.url banner_section_url(banner_section, format: :json)
end
