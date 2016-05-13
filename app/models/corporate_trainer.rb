class CorporateTrainer < ActiveRecord::Base
	has_and_belongs_to_many :courses

	has_attached_file :img,  styles: {large: '388x253#',medium: "388x253>", thumb: "250x351#" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :img,size: {less_than: 3.megabytes}

  	validates :img, presence: true
  	validates :name, presence: true, length: { in: 2..99 }
  	validates :designation, presence: true, length: { in: 2..99 }
end
