class Menu::LinksController < ApplicationController
	def index
		@menulinks = MenuLink.all
	end

	def new
		@menu_link = MenuLink.new
		#respond_to do |format|
		#	format.js
		#	format.html
		#end
    render :layout => false
	end

	def create
		@menulink = MenuLink.new(params[:menu_link])
		@status=@menulink.save!
		if @status
      flash[:notice]= "Menu Link Created Successfully"
      redirect_to(menu_links_path)
    else
      flash[:notice]= "Menu Link Not Created"
      redirect_to(new_menu_link_path)
    end
	end

	def edit
		@menu_link = MenuLink.find(params[:id])
		render :layout => false
	end

	def update
		@menulink=MenuLink.find(params[:id])
		@status = @menulink.update_attributes(params[:menu_link])
		if @status
      flash[:notice]= "Menu Group Updated Successfully"
      redirect_to(menu_links_path)
    else
      flash[:notice]= "Menu Group Not Updated"
      redirect_to(edit_menu_link(@manulink))
    end
	end

	def destroy
			@menulink = MenuLink.find(params[:id])
			@status = @menulink.destroy
			respond_to do |format|
				format.js
			format.html {redirect_to(menu_links_path)}
			end
	end

	def load_links
		@links=MenuLink.find_by_module_context_id(params[:module_id])
	 render :layout => false
	end

end
