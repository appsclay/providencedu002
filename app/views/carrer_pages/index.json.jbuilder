json.array!(@carrer_pages) do |carrer_page|
  json.extract! carrer_page, :id, :img, :heading, :highlight_img1, :highlight_h1, :highlight_p1, :highlight_img2, :highlight_h2, :highlight_p2, :highlight_img3, :highlight_h3, :highlight_p3, :highlight_img4, :highlight_h4, :highlight_p4, :hr_heading, :hr_email
  json.url carrer_page_url(carrer_page, format: :json)
end
