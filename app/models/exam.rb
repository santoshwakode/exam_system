#columns: name, teacher_id
#For exam create and add question using question_details.

class Exam < ActiveRecord::Base
	has_many :tests
	has_many :students, through: :tests

	belongs_to :teacher
	has_many :question_details, inverse_of: :exam
    accepts_nested_attributes_for :question_details, :allow_destroy => true
end