class Academic::GradesController < ApplicationController
  def index
    @grades = Grade.all
  end

  def show
  
  end

  def new
  @grade = Grade.new
  render :layout => false  
  end

  def create
    status = Grade.create(params[:grade])
    if status 
      flash[:notice] = "Grade Created Successfully"
      redirect_to :action => "index"
    else
      flash[:notice] = "Grade Not Created"
      redirect_to :action => "index"
    end 
  end

  def edit
  @grade = Grade.find([params[:id]])
  render :layout => false
  
  end
  
  def update
    grade = Grade.find(params[:id])
    status = grade.update_attributes(params[:grade])
    if status 
      flash[:notice] = "Grade Updated Successfully"
      redirect_to :action => "index"
    else
      flash[:notice] = "Grade not Updated"
      redirect_to :action => "index"
    end
  end

end
