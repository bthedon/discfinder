class Disc < ActiveRecord::Base
	extend FriendlyId
	friendly_id :sluggable, use: [:slugged, :finders]

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
