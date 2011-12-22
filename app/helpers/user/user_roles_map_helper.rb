module User::UserRolesMapHelper
	
	def users_for_select
		@users = User.all.map{ |u| [u.email,u.id] }
		return @users
	end

end
