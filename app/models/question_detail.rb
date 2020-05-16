#columns: question,  question_type, exam_id

class QuestionDetail < ActiveRecord::Base
	belongs_to :exam
end
