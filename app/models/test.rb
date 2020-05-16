#columns: exam_id, student_id, start_time, end_time
#Assign exam

class Test < ActiveRecord::Base
	belongs_to :exam
	belongs_to :student

	has_many :test_details

	scope :incomplete, -> { where(status: [nil, "Started"]) }
	scope :complete, -> { where(status: "Ended") }
end