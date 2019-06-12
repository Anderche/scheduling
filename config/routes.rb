Rails.application.routes.draw do
	namespace :api do
		namespace :v1 do
			resources :schedules, only: [:create, :index, :destroy]
			resources :appointments, only: [:create, :index, :destroy]
		end
	end
end

# INDEX, SHOW, NEW, CREATE, EDIT, UPDATE, DESTROY
