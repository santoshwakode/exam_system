#columns: name, address, educational_class

class Student < ActiveRecord::Base
	has_many :tests
	has_many :exams, through: :tests
end


