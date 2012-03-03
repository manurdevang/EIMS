class Hr::DesignationTypesController < ApplicationController
  def index
    @designation_types = DesignationType.all
  end

  def show
    @designation_type = DesignationType.find(params[:id])
  end

  def new
    @designation_type = DesignationType.new
    render :layout => false
  end
  
  def create    
   status = DesignationType.create(params[:designation_type])
   
   if status
      flash[:notice]= "Designation Type created Successfully"
      redirect_to :action => :index
    else
      flash[:notice] = "Designation Not created"
      redirect_to :action => :index
    end    
  end

  def edit
    @designation_type = DesignationType.find(params[:id])
    render :layout => false
  end

  def update
  @designation_type = DesignationType.find(params[:id])
  status = @designation_type.update_attributes(params[:designation_type])
  if status
    flash[:notice] ="Designation Type updated Successfully"
    redirect_to :action => "index"
  else
    flash[:notice] = "DesignationType Not Updated"
    redirect_to :action => :index  
    
  end
  end

end
