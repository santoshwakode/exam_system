class Exam < ActiveRecord::Base
    belongs_to :exam_format
	has_many :exam_details
    

end
