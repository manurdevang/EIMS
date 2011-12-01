class HomeController < ApplicationController
#before_filter :authenticate_admin!  
#before_filter :login
	def index
		#user=current_user
		#@userroles=user.roles
		#puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
#puts @userroles.count
  end
	
	def login
			user=current_user
			@userroles=user.roles
			puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
			puts @userroles.inspect
	end

end
