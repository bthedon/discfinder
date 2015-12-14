class Hole < ActiveRecord::Base
	has_many :course_holes
	has_many :courses, through: :course_holes
	has_many :discs

	def to_label
		"#{number}"
	end
end
