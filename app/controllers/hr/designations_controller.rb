class Hr::DesignationsController < ApplicationController
  
  def index
    @designations = Designation.all    
  end

  def new
    @designation = Designation.new
    render :layout => false
  end
  
  def create
    status = Designation.create(params[:designation])
    if status      
      redirect_to :action => "index"
    else
      redirect_to :action => "index"
    end
  end
  
  def edit
    @designation = Designation.find(params[:id])
    render :layout => false
  end
  
  def update
    @designation = Designation.find(params[:id])    
    status = @designation.update_attributes(params[:designation])
   raise @designation.inspect
    if status       
      redirect_to :action =>"index"
    else
      redirect_to :action => "index" 
    end
  end
  
end
