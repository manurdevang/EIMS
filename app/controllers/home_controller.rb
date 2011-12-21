class HomeController < ApplicationController
#before_filter :authenticate_admin!  
#before_filter :login
	def index
		#user=current_user
		#@userroles=user.roles
		#puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
		#puts @userroles.count
  end
	
	def selectrole
		if current_user.nil?
			@userroles=Role.find(3)
		else
			@userroles= current_user.roles
		end
			render :layout => 'selectrole'
	end

	def adminpage
		#user=current_user
		#@userroles=user.roles
		#puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
		#puts @userroles.count
  end
	
	def userpage
		
	end
	
	def set_logged_role
		session['selected_role'] = params[:role_id]
	end
end
