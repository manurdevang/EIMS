class Menu::GroupsController < ApplicationController
	def index
		@menugroups = MenuGroup.all
	end

	def new
		@menugroup = MenuGroup.new
    render :layout => false
		#respond_to do |format|
		#	format.js
		#	format.html
		#end
	end

	def create
		@status= MenuGroup.create(params[:menu_group])
    if @status
      flash[:notice]= "Menu Group Created Successfully"
      redirect_to(menu_groups_path)
    else
      flash[:notice]= "Menu Group Not Created"
			redirect_to(new_menu_group_path)
    end
	end

	def edit
		@menu_group = MenuGroup.find(params[:id])
		#@status=@menugroup.update_attributes(params[:menu_group])
		#respond_to do |format|
		#	format.js 
		#	format.html  
		#end
		render :layout=> false
	end

	def update
		@menugroup=MenuGroup.find(params[:id])
		@status = @menugroup.update_attributes(params[:menu_group])
		if @status
      flash[:notice]= "Menu Group Updated Successfully"
      redirect_to(menu_groups_path)
    else
      flash[:notice]= "Menu Group Not Updated.."
			redirect_to(menu_groups_path)
    end
	end

	def destroy
			@menugroup = MenuGroup.find(params[:id])
			@status = @menugroup.destroy
			@status = @menugroup.update_attributes(params[:menu_group])
			if @status
		    flash[:notice]= "Menu Group Deleted Successfully"
		    redirect_to(menu_groups_path)
		  else
		    flash[:notice]= "Menu Group Not Deleted.."
				redirect_to(menu_groups_path)
		  end
	end

end
