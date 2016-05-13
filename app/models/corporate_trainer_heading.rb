class CorporateTrainerHeading < ActiveRecord::Base
	validates :heading,presence: true, length: {in: 2..50}
end
