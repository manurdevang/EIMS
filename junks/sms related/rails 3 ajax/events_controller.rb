class EventsController < ApplicationController
  before_filter :find_event, :raise_if_event_is_nil, :except => [:index]
  before_filter :login_required, :require_download_permission, :only => [:download]
  
  def show
    unless request.xhr?
      redirect_to company_path(@event.company, :event_id => @event)
    end
  end
  
  def widget
    render :layout => false
  end
  
  def download
    @can_download = (@event.recording_available_for_download?)
    
    respond_to do |format|
      format.html {
        if @can_download
          send_file(@event.local_path, :filename => "#{@event.title}.mp3", :disposition => "attachment", :url_based_filename => true)
        else
          flash[:notice] = "Downloadable file is not available"
          redirect_to :back
        end
      }
      format.js {}
    end
  end
  
  def generate_embed
  end

  def embed
    respond_to do |format|
      format.js do
        @event = Event.find(params[:id])
      end
    end
  end

  protected
    def find_event
      @event = Event.find_by_hashie(params[:id])
    end
    
    def require_download_permission
      return true if @event.can_be_downloaded_by?(current_user)
      
      respond_to do |format|
        format.html {
          flash[:notice] = "You should subscribe to #{@event.company.ticker} to download this call"
          redirect_to :back
        }
        format.js { render :action => :cannot_download }
      end
      
      return false
    end
end
