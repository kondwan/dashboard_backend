class HostData < ActiveRecord::Base
  #extracting data from a text file
  
  def self.upload_data(host_data)
     f = File.open("/home/meduser/client_data/host_00-1f-3b-ac-8c-8b.log", "r")
     f = File.basename("/home/meduser/client_data/host_00-1f-3b-ac-8c-8b.log")
     mac_address = File.basename("/home/meduser/client_data/host_00-1f-3b-ac-8c-8b.log") =~/_(.*)\.log/
        $1
         mac = $1.to_s
     @host_id = Hostname.find_by_mac_address(mac).id
     
     #initialising the text files 
     
      free_mem = nil
      free_diskspace = nil
      host_id = nil
      load_average = nil
      host_name = nil
      
      #making the files accessed using the mac address
      f = File.open("/home/meduser/client_data/host_00-1f-3b-ac-8c-8b.log", "r")
      f.each do |r| 
        next if r.split(':').length  != 2
        title, value = r.split(':')
        
      
      if title.strip == "Free  Memory"
         free_mem = value
      elsif title.strip == "Free Diskspace"
         free_diskspace = value
      elsif  title.strip == "The average load is"
         load_average =  value
      elsif title.strip == "The host name is"
         host_name == value
         else
         host_id = @host_id
     
      
      end
     
    end
      #uploading the data into the database tables and saving theexscriptm
    
    host_data = HostData.new(
      :Free_memory => free_mem,
      :Free_diskspace => Time.now,
      :Host_id => @host_id,
      :Load_average => load_average,
      :Date_updated=> Date.today,
      :Date_created=>Date.today,
      :Host_name=>host_name
    )
    host_data.save
      
  end

end 