class CourseHole < ActiveRecord::Base
	belongs_to :course
	belongs_to :hole
end
