class FreeStudyMaterial < ActiveRecord::Base
  belongs_to :capsule_class

  has_attached_file :pdf
  #validates_attachment :pdf,  content_type: ["application/pdf"]
  validates :pdf, :attachment_content_type => { :content_type => ["application/pdf"]}
  validates_attachment :pdf,size: {less_than: 10.megabytes}

  

  validates :title, presence: true
  validates :pdf, presence: true
end
