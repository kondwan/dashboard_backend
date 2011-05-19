class HostnameController < ApplicationController

  def list
    @hostnames = Hostname.find(:all)
  end
  
  def new
    @hostname = Hostname.new
  end
  def create
    @hostname = Hostname.new(params[:hostname])
    if @hostname.save
      redirect_to :action =>'list'
    else
    render :action =>'new'
    end
  end
    def edit
    
    end
    def delete
     Hostname.find(params[:id]).destroy
     redirect_to :action => 'list'
    end
end
