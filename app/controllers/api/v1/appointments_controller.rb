module Api
	module v1
		class AppointmentsController < ApplicationController

			def initialize(title, start_time, end_time)
				@title = title
				@start_time = start_time
				@end_time = end_time
			end

			def index
				
			end

			def create

			end

			def destroy

			end

		end
	end
end
