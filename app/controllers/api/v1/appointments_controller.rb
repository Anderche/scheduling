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

			def new

			end			

			def create
				@appointment = Appointment.new(params[:title, :start_time, :end_time])

				if @appointment.save
					render json: @appointment, status: :created
				else
					render json: @appointment.errors, status: :unprocessable_entity
				end
			end

			def destroy
				@appointment.destroy

				head :no_content
			end

		end
	end
end
