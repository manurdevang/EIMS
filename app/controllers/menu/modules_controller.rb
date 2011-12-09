class Menu::ModulesController < ApplicationController

	def index
		@modulecontexts = ModuleContext.all
	end

	def new
		@module_context = ModuleContext.new
		render :layout=> false
	end

	def create
		@modulecontext= ModuleContext.new(params[:module_context])
		@status=@modulecontext.save!
		if @status
      flash[:notice]= "Module Created Successfully"
       redirect_to(menu_modules_path)
    else
      flash[:notice]= "Module Not Created"
      redirect_to(new_menu_modules_path)
    end
	end

	def edit
		@module_context = ModuleContext.find(params[:id])
		#respond_to do |format|
		#	format.js
		#	format.html
		#end
    render :layout=> false
	end

	def update
		@modulecontext=ModuleContext.find(params[:id])
		@status = @modulecontext.update_attributes(params[:module_context])
		if @status
      flash[:notice]= "Module Updated Successfully"
       redirect_to(menu_modules_path)
    else
      flash[:notice]= "Module Not Updated"
      redirect_to(menu_modules_path)
    end
	end

	def destroy
			@modulecontext=ModuleContext.find(params[:id])
			@status = @modulecontext.destroy
			if @status
      flash[:notice]= "Module Deleted Successfully"
       redirect_to(menu_modules_path)
    else
      flash[:notice]= "Module Not Deleted"
      redirect_to(menu_modules_path)
    end
	end

	def load_modules
		@modules=ModuleContext.all
		render :layout => false
	end

end
