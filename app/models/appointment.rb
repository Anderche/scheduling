class Appointment < ApplicationRecord
	include ActiveModel::Model
	attr_accessor :title, :start_time, :end_time, :schedule

  belongs_to :schedule

	def initialize(attributes = {})
		@title = attributes[:title]
		@start_time = attributes[:start_time]
		@end_time = attributes[:end_time]
		@schedule = attributes[:schedule]
	end



	# NOTES - DELETE
	# person = Person.new(name: 'bob', age: '18')
	# person.name # => "bob"
	# person.age  # => "18"

end
