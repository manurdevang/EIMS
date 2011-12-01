class Institution::InstitutesController < ApplicationController
	def index
		@educationinstutions=EducationInstitution.all
		respond_to do |format|
			format.html
			format.js
			format.xml { render :xml => @educationinstutions.to_xml }
		end
	end
	
	def new
		@educationinstution=EducationInstitution.new
		respond_to do |format|
			format.html
			format.js
			format.xml
		end
	end

	def create
	#	@educationinstutiongroup=EducationInstitutionGroup.find_by_id(params[:education_instution][:institution_group])
		@educationinstution=EducationInstitution.new(params[:education_instution])
		@educationinstution.save!
	#	@educationinstutiongroup.education_institutions << @educationinstution
	#	flash[:notice]="New Education Instution Created Successfully.."
		#redirect_to(user_country_index_path)
	end

	def edit
		@educationinstution=EducationInstitution.find(params[:id])
	end
	
	def update
		@educationinstution=EducationInstitution.find(params[:id])
		@status=@educationinstution.update_attributes(params[:education_instution])
		respond_to do |format|
			if @status
				format.js
			else		
				format.js
			end
		end
	end

	def destroy
		@educationinstution=EducationInstitution.find(params[:id])
		status = @educationinstution.destroy	
		if status
			flash[:notice]="Education Institution Successfully Deleted..."
		#	redirect_to(user_country_index_path)
		else
			flash[:notice]="Education Institution Not Deleted..."
		#	redirect_to(user_country_index_path)
		end
	end
end
