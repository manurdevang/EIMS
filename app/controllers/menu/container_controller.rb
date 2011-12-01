class Menu::ContainerController < ApplicationController

	def index
		@containers = Container.all
	end

	def new
		@container = Container.new
		respond_to do |format|
			format.js
			format.html
		end
	end

	def create
		@container = Container.new(params[:container])
		@status=@container.save!
		respond_to do |format|
			format.js
			format.html { redirect_to(menu_container_index_path)}
		end
	end

	def edit
		@container = Container.find(params[:id])
		respond_to do |format|
			format.js
			format.html
		end
	end

	def update
		@container=Container.find(params[:id])
		@status = @container.update_attributes(params[:container])
		respond_to do |format|
				format.js
			format.html { redirect_to(menu_container_index_path)}
		end
	end

	def destroy
			@menulink = Container.find(params[:id])
			@status = @menulink.destroy
			respond_to do |format|
				format.js
			format.html { redirect_to(menu_container_index_path)}
			end
	end

end
