class AboutPage < ActiveRecord::Base

	has_attached_file :img,  styles: { medium: "1351x533>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :img,size: {less_than: 4.megabytes}

  	validates :about, presence: true, uniqueness: true,length: { minimum: 40}
  	validates :vision, presence: true,length: { minimum: 30}
  	validates :mission, presence: true, length: { minimum: 30 }


end
