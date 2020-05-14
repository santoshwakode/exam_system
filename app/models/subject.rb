class Subject < ActiveRecord::Base
    has_many :exam_formats
	has_many :exam_details
	has_many :teachers
	has_many :students
end
