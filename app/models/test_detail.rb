#columns: test_id:integer student_id, question_detail_id, answer:text score, status

class TestDetail < ActiveRecord::Base
	belongs_to :test
	belongs_to :student
	belongs_to :question_detail

end
