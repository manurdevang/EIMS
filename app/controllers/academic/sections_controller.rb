class Academic::SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def new
    @section = Section.new
    render :layout => false
  end

  def create
    status = Section.create(params[:section])
    if status
      flash[:notice] = "Section Created Successfully"
      redirect_to :action => "index"
    else
      flash[:notice] = "Section not created"
      redirect_to :action => "index"    
    end
  end


  def edit
    @section = Section.find(params[:id])
    render :layout => false
  end

  def update
    @section = Section.find(params[:id])
    status = @section.update_attributes(params[:section])
    if status
      flash[:notice] = "section updated successfully"
      redirect_to :action => "index"
    else
      flash[:notice] = "Section not updated"
      redirect_to :action => "index"  
    end
  end

end
