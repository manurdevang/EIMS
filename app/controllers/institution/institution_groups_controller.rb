class Institution::InstitutionGroupsController < ApplicationController

	def index
		@educationinstutiongroups=EducationInstitutionGroup.all
		respond_to do |format|
			format.html
			format.js
			format.xml { render :xml => @educationinstutiongroups.to_xml}
		end
	end
	
	def new
		@educationinstutiongroup=EducationInstitutionGroup.new
		respond_to do |format|
			format.html { @educationinstutiongroup }
			format.js 
			format.xml
		end
	end

	def create
		@educationinstutiongroup=EducationInstitutionGroup.new(params[:education_instution_group])
		respond_to do |format|
			if	@educationinstutiongroup.save
			#	flash[:notice]="New Education Instution Group Created Successfully.."
				format.html {redirect_to(institution_institution_groups_path) }	
				format.js
			else
			#	flash[:notice]="New Education Instution Group Not Created Successfully.."
					format.html { redirect_to(new_institution_institution_group_path) }  
		      format.js 
			end 
		end
	end

	def edit
		@educationinstutiongroup=EducationInstitutionGroup.find(params[:id])
	end
	
	def update
		@educationinstutiongroup=EducationInstitutionGroup.find(params[:id])
		@status=@educationinstutiongroup.update_attributes(params[:educationinstutiongroup])
		respond_to do |format|
			if @status
				format.js	
			else		
				format.js
			end
		end
	end

	def destroy
		@educationinstutiongroup=EducationInstitutionGroup.find(params[:id])
		status = @educationinstutiongroup.destroy	
		respond_to do |format|
		if status
			format.js
			flash[:notice]="Education Institution Group Successfully Deleted..."
		#	redirect_to(user_country_index_path)
		else
		format.js
			flash[:notice]="Education Institution Not Deleted..."
		#	redirect_to(user_country_index_path)
		end		
		end	
	end


end
