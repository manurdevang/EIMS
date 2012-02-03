class ApplicationController < ActionController::Base

#before_filter :user_roles, :except => "login"
#	before_filter :set_role
#	require "default_config"
#
# current_location = DefaultConfig.get[:location_id]
helper :all
  protect_from_forgery
	def	after_sign_in_path_for(resource)
	#redirect_to :controller=> :home, :action=> :login		
		selectrole_home_index_path
	end

	def after_sign_out_path_for(resource)
		user_session_path
		#root_path
	end

	def set_role_session(role_id)
		puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
puts role_id.inspect
		session[:role] = role_id
		
		puts session[:role]
	end

	#def is_admin
	#	if current_user.id.role == 'Admin'
	#		return true
	#	else
	#		return false
	#	end
	#end

	#def after_sign_in_path_for(resource)
	#	  unless resource.class.to_s == "FactoryLogin"
	#	    if current_user.admin?
	#	      admin_clients_path
	#	    elsif current_user.user?
	#	      user_dashboard_show_path
	#	    elsif current_user.content_creator
	#	     content_dashboard_show_path 
	#	    else 
	#	      client_dashboard_show_path  
	#	    end
	#	  else
	#	    factory_dashboard_path
	#	  end  
	#end

end
