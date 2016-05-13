class Course < ActiveRecord::Base
  has_many :fee_structures
	has_and_belongs_to_many :corporate_trainers
	attr_accessor :corporate_trainer_ids
	
	has_attached_file :img,  styles: { large: "320x500>",medium: "280x400>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :img,size: {less_than: 3.megabytes}

  	validates :position, presence: true
  	validates :name, presence: true
  	validates :position, presence: true
  	validates :duration, presence: true
end
