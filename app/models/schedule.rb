class Schedule < ApplicationRecord
  include ActiveModel::Model
	has_many :appointments
	attr_accessor :sch_name

	def initialize(attributes = {})
		@sch_name = attributes[:sch_name]
	end

	sch_spring = Schedule.new(sch_name: 'Spring')
	sch_summer = Schedule.new(sch_name: 'Summer')

	# NOTES - DELETE
	# person = Person.new(name: 'bob', age: '18')
	# person.name # => "bob"
	# person.age  # => "18"

end

