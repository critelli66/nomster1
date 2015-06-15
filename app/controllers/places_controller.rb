class PlacesController < ApplicationController
	def index
		@places = Place.all
		@places = Place.paginate(:page => params[:page])
	end

	def new
		@place = Place.new
	end
end
