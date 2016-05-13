json.array!(@term_pages) do |term_page|
  json.extract! term_page, :id, :script
  json.url term_page_url(term_page, format: :json)
end
