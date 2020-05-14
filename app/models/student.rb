class Student < ActiveRecord::Base
	belongs_to :teacher
	has_many :exam_details

    validates :name, presence: true  



end
