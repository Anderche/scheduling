class Schedule < ApplicationRecord
	# has_many :interns
	has_many :appointments

	attr_accessor :sch_name

	def initialize(attributes = {})
		@sch_name = attributes[:sch_name]
	end
end

