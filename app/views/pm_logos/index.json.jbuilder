json.array!(@pm_logos) do |pm_logo|
  json.extract! pm_logo, :id, :position, :logo
  json.url pm_logo_url(pm_logo, format: :json)
end
