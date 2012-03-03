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
		set_role_session(params[:role_id])
	end

	def load_states
puts "+=======================================================load states"
puts params.inspect
		@states = []
		country_id = params[:country_id] 
		country_id = 1 if params[:country_id] .nil?
		State.find_all_by_country_id(country_id).collect {|a| @states << [a.name,a.id]}
		render :layout => false
	end
end
