class User::UserRolesMapController < ApplicationController
	def index
		# render :layout => 'selectrole'
	end
	
	def user_roles_mapping
		
	end

	def load_user_roles
		@user= params[:user_id]
		@userroles = User.find(@user).roles
		@roles = Role.all
		render :layout => false
	end

	def save_user_roles
		roles=params[:role]
		user= params[:user][:id]
		preroles = [],curroles = []
		userroles= UsersRole.find_all_by_user_id(user).collect{|u| preroles << u.role_id }
		roles.each { |key,value| 	curroles <<  key.to_i	 }
		needtodelete = preroles - curroles
		needtocreate = curroles - preroles
		deletestatus = true, createstatus = true
		@del = UsersRole.find_all_by_user_id_and_role_id(user,needtodelete)
		@del.each do |d|
			status = d.destroy
			deletestatus = deletestatus && status
		end
		needtocreate.each do |c|
			@cre = UsersRole.new({:user_id => user,:role_id => c, :status => true})
			status = @cre.save!
			createstatus = createstatus && status
		end
		if deletestatus && createstatus
			flash[:notice] = 'Roles Assigned SuccessFully.'
		else
			flash[:notice] = 'Roles Not Assigned SuccessFully.'
		end
		redirect_to(user_roles_mapping_user_user_roles_map_index_path)
	end
end
