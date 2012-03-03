class Hr::DepartmentsController < ApplicationController
  
  def index
    @departments = Department.all    
  end
  
  def new
    @department = Department.new    
    render :layout => false
  end
  
  
  def create   
    department = Department.create(params[:department])
    if department
      redirect_to :action => "index"
     else
       render :action => "index"
    end
    
  end
  
  def edit
    @department = Department.find(params[:id])
    render :layout => false
  end
  
  def update
    @department = Department.find(params[:id])
    raise @department.inspect
    status = @department.update_attributes(params[:department])
    if status
      redirect_to :action => "index"
    else
      render :action => "index"  
    end
    
  end
  
end
