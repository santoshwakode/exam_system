class Teacher < ActiveRecord::Base
	has_many :students
	has_many :exam_details
	belongs_to :subject

	validates :name, presence: true  

end
