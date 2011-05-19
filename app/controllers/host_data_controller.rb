class HostDataController < ApplicationController
  #searching the records from the database and store them in instance
  #@host_data
  def index
    @host_datas = HostData.find(:all)
   
  end
  #displaying each item from the database
  
  def hostnames
  end
end
