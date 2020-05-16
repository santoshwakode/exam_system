#columns: name

class Teacher < ActiveRecord::Base

	has_many :exams

	validates :name, presence: true


end
