class Course < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: [:slugged, :finders]
	has_many :course_holes
	has_many :holes, through: :course_holes
	has_many :discs
	validates_uniqueness_of :name
	validates_presence_of :address

	geocoded_by :address
	after_validation :geocode
end
