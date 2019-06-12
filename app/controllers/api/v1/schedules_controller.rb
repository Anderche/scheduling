module Api
	module v1
		class SchedulesController < ApplicationController

			attr_accessor :sch_name

			def initialize(attributes = {})
				@sch_name = attributes[:sch_name]
			end

			def index
				@schedules = Schedule.order(created_at: :desc)
				render json: @schedules, status: :ok
			end

			def create

			end

			def destroy
				@schedule.destroy

				head :no_content
			end

		end
	end
end
