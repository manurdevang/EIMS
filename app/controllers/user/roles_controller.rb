class User::RolesController < ApplicationController
	
	def index
		@roles=Role.find(:all)
	end	
	
	def new 
		@role=Role.new
		render :layout => false	
	end

	def create
		@role=Role.new(params[:Role])
		@status=@role.save!	
		if @status
			flash[:notice]="New role Created Successfully.."
			  #redirect_to(user_roles_path)		
		else
				flash[:notice]="New role Not Created .."
		end
		 render :layout => false
	end
	
	def edit
		@role = Role.find(params[:id])
		render :layout => false
	end

	def update
		@role = Role.find(params[:id])
		@status = @role.update_attributes(params[:role])
		if @status
			flash[:notice]="Role Edited Successfully.."
			redirect_to(user_roles_path)		
		else
				flash[:notice]="Role Not Edited .."
		end
		#respond_to do |format|
		#		format.js
		#	format.html { redirect_to(menu_links_path)}
		#end
	end

	def destroy
			@role = Role.find(params[:id])
			@status = @role.destroy
			if @status
			flash[:notice]="Roleated Successfully.."
			redirect_to(user_roles_path)		
		else
				flash[:notice]="New role Not Created .."
		end
	end
end
