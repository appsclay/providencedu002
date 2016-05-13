class Student < ActiveRecord::Base
	 validates :mmail, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
     message: "please enter a valid email" }
     validates :name,presence: true, length: {maximum: 50}
     validates :mmessage,presence: true, length: { in: 20..400 }
end
