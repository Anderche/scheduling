class Appointment < ApplicationRecord
	include ActiveModel::Model
	attr_accessor :title, :start_time, :end_time

  belongs_to :schedule

	def initialize(attributes = {})
		@title = attributes[:title]
		@start_time = attributes[:start_time]
		@end_time = attributes[:end_time]
	end
end
