class Menu::LinksController < ApplicationController
	def index
		@menulinks = MenuLink.all
	end

	def new
		@menulink = MenuLink.new
		respond_to do |format|
			format.js
			format.html
		end
	end

	def create
		@menulink = MenuLink.new(params[:menu_link])
		@status=@menulink.save!
		respond_to do |format|
			format.js
			format.html { redirect_to(menu_links_path)}
		end
	end

	def edit
		@menulink = MenuLink.find(params[:id])
		respond_to do |format|
			format.js
			format.html
		end
	end

	def update
		@menulink=MenuLink.find(params[:id])
		@status = @menulink.update_attributes(params[:menu_link])
		respond_to do |format|
				format.js
			format.html { redirect_to(menu_links_path)}
		end
	end

	def destroy
			@menulink = MenuLink.find(params[:id])
			@status = @menulink.destroy
			respond_to do |format|
				format.js
			format.html { redirect_to(menu_links_path)}
			end
	end

	def load_links
puts "jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj"
puts params.inspect
		#@links=MenuLink.find_by_module_context_id(params[:module_id])
	render :layout => false
	end

end
