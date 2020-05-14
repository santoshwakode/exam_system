class TestDetail < ActiveRecord::Base
	belongs_to :exam_format
	belongs_to :exam_detail
end
