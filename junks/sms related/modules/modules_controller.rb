class Login::ModulesController < ApplicationController


  	def index
		@modules=ModuleContext.all
		end

		def new
			@module=ModuleContext.new		
		end

		def create
			@module=ModuleContext.new(params[:module])			
			@module.save!
			flash[:notice]="Successfully Module Created.."
			redirect_to(module_index_path)
		end

		def edit
			@module=ModuleContext.find(params[:id])
		end

		def update
			@module=ModuleContext.update_attributes(params[:module])
		end

		def destroy
			@module=ModuleContext.find(params[:id])
			status=@module.destroy
			if status
				flash[:notice]="Successfully Deleted.."
				redirect_to(module_index_path)
			else
				flash[:notice]="Could not Deleted.."
				redirect_to(module_index_path)
			end
		end

end
