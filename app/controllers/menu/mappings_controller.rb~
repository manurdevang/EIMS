class Menu::MappingsController < ApplicationController
	
	def role_menu_group
    #@menu_containers=MenuContainer.all
		@menu_groups= MenuGroup.all
		@roles= Role.all
  end

	def role_menu_group_save
		@menugroup=MenuGroup.find(params[:menu][:group_id])
		@menugroup.role_id = params[:role][:id]
		status = @menugroup.save!
		if status
			flash[:notice] = "Menu Group Mapped to Role Successfully"
		else
			flash[:notice] = "Menu Group Not Mapped to Role Successfully"
		end
		redirect_to(role_menu_group_menu_mappings_path)
  end
	
	
  def menu_group_containers
    @menu_groups= MenuGroup.all
  end
  
  def menu_container_links
    @menu_containers=MenuContainer.all
  end
	


end
