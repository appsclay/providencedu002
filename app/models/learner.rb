class Learner < ActiveRecord::Base

	validates :email, 
	uniqueness: true, 
	presence: true,
	format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "please enter a valid email" }
	
	validates :name, presence: true, length: {in: 4..90}

	validates :phone_number, 
	uniqueness: true, 
	format: {with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "please enter a valid mobile number"}, 
	length: { is: 10 }

	def self.search(search)
	  if search
	    
	    where(course_id: "#{search}").all
	  else
	    all.order("created_at ASC")
	  end
	end

	
	
end
