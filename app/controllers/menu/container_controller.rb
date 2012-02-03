class Menu::ContainerController < ApplicationController

	def index
		@containers = MenuContainer.all
	end

	def new
		@container = MenuContainer.new
		#render :layout => false
	end

	def create
		@container = MenuContainer.new(params[:container])
		@status=@container.save!
    if @status
      flash[:notice]= "Menu Container Created Successfully"
      redirect_to(menu_container_index_path)
    else
      flash[:notice]= "Menu Container Not Created"
      redirect_to(new_menu_container_path)
    end
	end

	def edit
		@container = MenuContainer.find(params[:id])
		render :layout => false
	end

	def update
		@container=MenuContainer.find(params[:id])
		@status = @container.update_attributes(params[:container])
		if @status
      flash[:notice]= "Menu Container Updated Successfully"
      redirect_to(menu_container_index_path)
    else
      flash[:notice]= "Menu Container Not Updated.."
      redirect_to(edit_menu_container_path(@container))
    end
	end

	def destroy
			@container = MenuContainer.find(params[:id])
			@status = @container.destroy
		if @status
      flash[:notice]= "Menu Container Deleted Successfully"
      redirect_to(menu_container_index_path)
    else
      flash[:notice]= "Menu Container Not Deleted.."
      redirect_to(edit_menu_container_path(@container))
    end
	end

end
