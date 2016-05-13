class BannerSection < ActiveRecord::Base

	has_attached_file :banner_img,  styles: { medium: "1600x800>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :banner_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :banner_img,size: {less_than: 5.megabytes}

  	validates :banner_heading, presence: true, length: { in: 2..91 }
  	validates :banner_button_text, presence: true, length: {in: 2..20}
  	validates :banner_button2_text, presence: true, length: {in: 2..20}
  	validates :banner_button_url, presence: true
  	validates :banner_button2_url, presence: true

end
