json.array!(@pm_headings) do |pm_heading|
  json.extract! pm_heading, :id, :heading
  json.url pm_heading_url(pm_heading, format: :json)
end
