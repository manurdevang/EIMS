class User::RolesController < ApplicationController
	
	def index
		@roles=Role.find(:all)
	end	
	
	def new 
		@role=Role.new	
	end

	def create
		@role=Role.new(params[:Role])
		@role.save!	
		flash[:notice]="New role Created Successfully.."
		redirect_to(user_roles_path)		
	end
	
	def edit
		@role = Role.find(params[:id])
	end

	def update
		@role = Role.find(params[:id])
		@status = @role.update_attributes(params[:role])
		#respond_to do |format|
		#		format.js
		#	format.html { redirect_to(menu_links_path)}
		#end
	end

	def destroy
			@role = Role.find(params[:id])
			@status = @role.destroy
	end
end
