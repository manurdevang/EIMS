class Menu::GroupsController < ApplicationController
	def index
		@menugroups = MenuGroup.all
	end

	def new
		@menugroup = MenuGroup.new
		respond_to do |format|
			format.js
			format.html
		end
	end

	def create
		@menugroup = MenuGroup.new(params[:menu_group])
		@status=@menugroup.save!
		respond_to do |format|
			format.js
			format.html 
		end
	end

	def edit
		@menugroup = MenuGroup.find(params[:id])
		respond_to do |format|
			format.js 
			format.html  
		end
	end

	def update
		@menugroup=MenuGroup.find(params[:id])
		@status = @menugroup.update_attributes(params[:menu_group])
		respond_to do |format|
				format.js
			format.html { redirect_to(menu_links_path)}
		end
	end

	def destroy
			@menugroup = MenuGroup.find(params[:id])
			@status = @menugroup.destroy
			respond_to do |format|
				format.js
			format.html { redirect_to(menu_groups_path)}
			end
	end

end
