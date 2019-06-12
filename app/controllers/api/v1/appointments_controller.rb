module Api
	module v1
		class AppointmentsController < ApplicationController

			attr_accessor :title, :start_time, :end_time

			def initialize(attributes = {})
				@title = attributes[:title]
				@start_time = attributes[:start_time]
				@end_time = attributes[:end_time]
			end

			def index
				@appointments = Appointment.order(start_time: :asc)
				# posts = Post.order(created_at: :desc)

				render json: @schedules, status: :ok
			end

			def create

			end

			def destroy
				@appointment.destroy

				head :no_content
			end

		end
	end
end
