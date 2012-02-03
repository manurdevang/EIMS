class Menu::MappingsController < ApplicationController
	
	# ROle Menu Group Mapping
	def role_menu_group
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
	
	#Menu Group Container mapping
  def menu_group_containers
    @menu_groups= MenuGroup.all
		@menu_containers=MenuContainer.all
  end

  def menu_group_containers_mapping_page
		@menu_containers = MenuContainer.all
		@menu_group_containers = MenuGroupMenuContainer.find_all_by_menu_group_id(params[:menu_group_id])
		render :layout=> false
  end

	def menu_group_containers_mapping_page_save
		precont = [],curcont = []
		@menu_container_by_table = MenuGroupMenuContainer.find_all_by_menu_group_id(params[:menu][:group])
			if !@menu_container_by_table.nil?
				@menu_container_by_table.collect{|u| precont << u.menu_container_id }
			end
		if !params[:container].nil?
			@menu_container_by_form = params[:container].each { |key,value| curcont << key.to_i }
		end
		needtodelete = precont - curcont
		needtocreate = curcont - precont
		puts "++++++++++++++++++++++++++++++++++++++mapping controller"
		puts needtodelete.inspect
		puts needtocreate.inspect
	
		deletestatus = true, createstatus = true
		needtodelete.each do |ntd|
		@del = MenuGroupMenuContainer.find_all_by_menu_group_id_and_menu_container_id(params[:menu][:group],ntd)
			#status = @del.destroy if !@del.nil?
			deletestatus = deletestatus && status
		end
		needtocreate.each do |c|
			@cre = MenuGroupMenuContainer.new({:menu_group_id => params[:menu][:group],:menu_container_id => c})
			status = @cre.save!
			createstatus = createstatus && status
		end
		if deletestatus && createstatus
			flash[:notice] = 'Container Assigned SuccessFully.'
		else
			flash[:notice] = 'Container Not Assigned SuccessFully.'
		end
	redirect_to(menu_group_containers_menu_mappings_path)
	end
 
#Menu Container Menu Links mapping 
  def menu_container_links
    @menu_containers = MenuContainer.all
		@menu_links = MenuLink.all
		#render :layout => false
  end
	
	def menu_container_links_mapping_page
		@menu_container_id = params[:menu_container_id]
    @menu_containers_links = MenuContainerMenuLink.find_all_by_menu_container_id(params[:menu_container_id])
		@menu_modules = ModuleContext.all
		render :layout => false
  end
	
	def module_links
		@menu_container_id=params[:menu_container_id]
		@menu_container_menu_links = MenuContainerMenuLink.find_all_by_menu_container_id(params[:menu_container_id])
		@menu_modules = ModuleContext.find(params[:module_id])
		@menu_links = MenuLink.find_all_by_module_context_id(params[:module_id])
		render :layout => false
	end

	def menu_container_links_mapping_page_save
		prelinks = [],curlinks = []
		@menu_container_links = MenuContainerMenuLink.find_all_by_menu_container_id(params[:menu_container_id])
			if !@menu_container_by_table.nil?
				@menu_container_links.collect{|u| prelinks << u.menu_link_id }
			end
		@menu_links_by_form = params[:menu_links].each { |key,value| curlinks << key.to_i }
		needtodelete = prelinks - curlinks
		needtocreate = curlinks - prelinks
		deletestatus = true, createstatus = true
		needtodelete.each do |ntd|
		@del = MenuContainerMenuLink.find_by_menu_container_id_and_menu_link_id(params[:menu_container_id],ntd)
			status = @del.destroy if !@del.nil?
			deletestatus = deletestatus && status
		end
		needtocreate.each do |ntc|
			puts "MENU LINK ID   "+ntc.id.to_s
			@cre = MenuContainerMenuLink.new({:menu_container_id => params[:menu_container][:id],:menu_link_id => ntc})
			status = @cre.save!
			createstatus = createstatus && status
		end
		if deletestatus && createstatus
			flash[:notice] = 'Links Assigned SuccessFully.'
		else
			flash[:notice] = 'Links Not Assigned SuccessFully.'
		end
		redirect_to(menu_container_links_menu_mappings_path)
	end
end
