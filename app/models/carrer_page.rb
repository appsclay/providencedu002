class CarrerPage < ActiveRecord::Base

	has_attached_file :img,  styles: { medium: "1400x933>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :img,size: {less_than: 4.megabytes}

  	has_attached_file :highlight_img1,  styles: { medium: "585x350>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :highlight_img1, content_type: /\Aimage\/.*\Z/
  	validates_attachment :highlight_img1,size: {less_than: 3.megabytes}

  	has_attached_file :highlight_img2,  styles: { medium: "585x350>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :highlight_img2, content_type: /\Aimage\/.*\Z/
  	validates_attachment :highlight_img2,size: {less_than: 3.megabytes}

  	has_attached_file :highlight_img3,  styles: { medium: "585x350>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :highlight_img3, content_type: /\Aimage\/.*\Z/
  	validates_attachment :highlight_img3,size: {less_than: 3.megabytes}
	
	has_attached_file :highlight_img4,  styles: { medium: "585x350>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :highlight_img4, content_type: /\Aimage\/.*\Z/
  	validates_attachment :highlight_img4,size: {less_than: 3.megabytes}
end
