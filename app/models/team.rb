class Team < ActiveRecord::Base
	has_attached_file :img,  styles: { medium: "366x356>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :img,size: {less_than: 3.megabytes}

  	validates :name, presence: true, uniqueness: true,length: { in: 4..30 }
  	validates :designation, presence: true,length: { maximum: 30}
  	validates :link, presence: true
  	validates :quote, length: { maximum: 250}
end
