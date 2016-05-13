class PmLogo < ActiveRecord::Base
	has_attached_file :logo,  styles: { large: "300x300>",medium: "200x200>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  	validates_attachment :logo,size: {less_than: 2.megabytes}

  	validates :logo, presence: true
  	
end
