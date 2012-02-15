class Master::religionsController < ApplicationController

	def index
		@religions=Religion.all
	end
	
	def new
		@religion=Religion.new
	end

	def create
		@religion=Religion.new(params[:religion])
		@religion.save!
		flash[:notice]="New Religion Created Successfully.."
		redirect_to(master_religion_index_path)
	end

	def edit
		@religion=Religion.find(params[:id])
	end
	
	def update
		@religion=Religion.find(params[:id])
		@religion=Religion.update_attributes(params[:religion])
	end

	def destroy
		@religion=Religion.find(params[:id])
		status = @religion.destroy	
		if status
			flash[:notice]="Religion Successfully Deleted..."
			redirect_to(master_religion_index_path)
		else
			flash[:notice]="Religion Not Deleted..."
			redirect_to(master_religion_index_path)
		end		
	end
end
