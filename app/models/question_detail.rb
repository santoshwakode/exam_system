#columns: question,  question_type, exam_id

class QuestionDetail < ActiveRecord::Base
	belongs_to :exam

	validates :question, :question_type, presence: true
end
