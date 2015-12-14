class Disc < ActiveRecord::Base
	extend FriendlyId
	friendly_id :sluggable, use: [:slugged, :finders]

	validates_presence_of :course_id
	validates_presence_of :brand
	validates_presence_of :name
	validates_presence_of :hole_id



	belongs_to :user
	belongs_to :hole
	belongs_to :course

	def disc_desc
		color + " " + brand + " " + name
	end

	def sluggable
		disc_desc + " "	+ course.name + " " + "#{hole.number}"
	end

end
