module Api
	module v1
		class SchedulesController < ApplicationController

			def index
				@schedules = Schedule.order(created_at: :desc)
				render json: @schedules, status: :ok
			end

			def create
				@schedule = Schedule.new(params[:sch_name])

				if @schedule.save
					render json: @schedule, status: :created
				else
					render json: @schedule.errors, status: :unprocessable_entity
				end
			end

			def destroy
				@schedule.destroy

				head :no_content
			end

		end
	end
end
