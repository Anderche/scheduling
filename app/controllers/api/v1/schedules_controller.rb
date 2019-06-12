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

			def new

			end

			def create

			end


			def create
				@contact = Contact.new(params[:contact])

				if @contact.save
					render json: @contact, status: :created
				else
					render json: @contact.errors, status: :unprocessable_entity
				end
			end

			# def create
			# @contact = Contact.new(params[:contact])

			# 	if @contact.save
			# 		render json: @contact, status: :created
			# 	else
			# 		render json: @contact.errors, status: :unprocessable_entity
			# 	end
			# end


			def destroy
				@schedule.destroy

				head :no_content
			end

		end
	end
end
