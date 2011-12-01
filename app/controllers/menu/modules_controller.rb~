class Menu::ModulesController < ApplicationController

	def index
		@modulecontexts = ModuleContext.all
	end

	def new
		@modulecontext = ModuleContext.new
		respond_to do |format|
			format.js
			format.html
		end
	end

	def create
		@modulecontext= ModuleContext.new(params[:modulecontext])
		@status=@modulecontext.save!
		respond_to do |format|
			format.js
			format.html { redirect_to(menu_modules_path) }
		end
	end

	def edit
		@modulecontext = ModuleContext.find(params[:id])
		respond_to do |format|
			format.js
			format.html
		end
	end

	def update
		@modulecontext=ModuleContext.find(params[:id])
		@status = @modulecontext.update_attributes(params[:modulecontext])
		respond_to do |format|
				format.js
				format.html	{ redirect_to(menu_modules_path) }
		end
	end

	def destroy
			@modulecontext=ModuleContext.find(params[:id])
			@status = @modulecontext.destroy
			respond_to do |format|
				format.js
				format.html { redirect_to(menu_modules_path) }
			end
	end

	def load_modules
		@modules=ModuleContext.all
		render :layout => false
	end

end
