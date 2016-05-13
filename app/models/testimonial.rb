class Testimonial < ActiveRecord::Base
	has_attached_file :avatar,  styles: { large: "300x300>",medium: "200x200>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  	validates_attachment :avatar,size: {less_than: 3.megabytes}

  	validates :content, presence: true, uniqueness: true,length: { in: 4..260}
end
