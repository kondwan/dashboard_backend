class HostDataController < ApplicationController
    #searching the records from the database and store them in instance
    #@host_data
    def index
      @host_datas = HostData.find(:all)
      
     
    end
    #displaying each item from the database
    
    def show
    
      @host_data = HostData.find(params[:id])
    end
    
    def delete
      @host_data = HostData.find(params[:id]).destroy
      redirect_to  :action=>'index'
    end
    def refresh
      @refresh = HostData.upload_data("")
      redirect_to :action=>'index'
    end
    def statistics
  
      @host_data = HostData.count
       @host = HostData.find(:all, :conditions=>{:Date_created =>(Date.today)})
       @last_update = HostData.find(:last, :order=>"Date_created")
    
    end
    def recent
     @recent = @last_update = HostData.find(:last, :order=>"Date_created") 
    end
    def perweek
      

    
    end
    
    
  
end
