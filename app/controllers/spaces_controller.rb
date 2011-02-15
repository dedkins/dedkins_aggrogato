class SpacesController < ApplicationController
	before_filter :load_building
	
	def create 
		@space = @building.spaces.new(params[:space])
		if @space.save
			redirect_to @building, :notice => "Space Added"
		else
			redirect_to @building, :alert => "Space not added"
		end
	end
	
	def destroy
		@space = @building.spaces.find(params[:id])
		@space.destroy
		redirect_to @building, :notice => "Space Deleted"
	end
	
	private
		def load_building
			@building = Building.find(params[:building_id])
		end
		
end
