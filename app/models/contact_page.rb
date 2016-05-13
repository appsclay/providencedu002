class ContactPage < ActiveRecord::Base

	has_attached_file :img,  styles: { medium: "1400x933>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :img,size: {less_than: 4.megabytes}

  	

end
