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

      @hostname = Hostname.find(params[:id])
    
    end
    def update
     
      @hostname = Hostname.find(params[:id])
      if  @hostname.update_attributes(params[:hostname])
          redirect_to :action=> 'list', :id=> @hostname
      else
         
          render :action=>'edit'
      end
    end
    def delete
     Hostname.find(params[:id]).destroy
     redirect_to :action => 'list'
    end
end
