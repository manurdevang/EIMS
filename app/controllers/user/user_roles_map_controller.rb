class User::UserRolesMapController < ApplicationController
	def index
		# render :layout => 'selectrole'
	end
	
	def user_roles_mapping
		
	end

	def load_user_roles
		user= params[:user_id]
		@userroles = User.Find(user).roles
		@roles = Role.all
		render :layout => false
	end
end
