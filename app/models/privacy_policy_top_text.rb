class PrivacyPolicyTopText < ActiveRecord::Base
	validates :content,presence: true, length: {in: 4..500}
end
