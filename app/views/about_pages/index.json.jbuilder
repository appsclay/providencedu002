json.array!(@about_pages) do |about_page|
  json.extract! about_page, :id, :img, :about, :vision, :mission, :extra
  json.url about_page_url(about_page, format: :json)
end
