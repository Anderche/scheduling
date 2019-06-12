class Appointment < ApplicationRecord
  belongs_to :schedule

	attr_accessor :title, :start_time, :end_time

	def initialize(attributes = {})
		@title = attributes[:title]
		@start_time = attributes[:start_time]
		@end_time = attributes[:end_time]
	end
end
