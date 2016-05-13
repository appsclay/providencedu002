class PmText < ActiveRecord::Base
	validates :bottom_text,presence: true, length: {in: 5..400}
end
