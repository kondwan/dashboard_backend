class HostData < ActiveRecord::Base
has_many :hostnames
  #extracting data from a text file
  
  def self.upload_data(host_data)
     f = File.open("/home/meduser/client_data/host_00-1f-3b-ac-8c-8b.log", "r")
     f = File.basename("/home/meduser/client_data/host_00-1f-3b-ac-8c-8b.log")
     mac_address = File.basename("/home/meduser/client_data/host_00-1f-3b-ac-8c-8b.log") =~/_(.*)\.log/
     $1
     @mac_address = $1.to_s
     mac = $1.to_s
     
     @host_id = Hostname.find_by_mac_address(mac).id
     
     
     #initialising the text files 
     
      free_mem = nil
      used_mem = nil
      shared_mem = nil
      buffered_mem = nil
      total_diskspace = nil
      used_diskspace = nil
      free_diskspace = nil
      usage_percent = nil
      host_name = nil
      host_id = nil
      load_average = nil
    
      
      
      
      #making the files accessed using the mac address
      f = File.open("/home/meduser/client_data/host_00-1f-3b-ac-8c-8b.log", "r")
      f.each do |r| 
        next if r.split(':').length  != 2
        title, value = r.split(':')
        
      
      if title.strip == "Free  Memory"
         free_mem = value
      elsif title.strip == "Used  Memory"
      	 used_mem = value
      	 elsif title.strip == "Shared  Memory"
      	 shared_mem = value
      	 elsif title.strip == "Buffered  Memory"
      	 buffered_mem = value	
      elsif title.strip == "Total Diskpace"
         total_diskspace = value
         elsif title.strip == "Used Diskpace"
         used_diskspace = value
         elsif title.strip == "Usage(%) Diskpace"
         usage_percent = value
         elsif title.strip == "Free Diskpace"
         free_diskspace = value
      elsif  title.strip == "The average load is"
         load_average =  value
        
      elsif title.strip == "The host name is"
         host_name = value
         else
         host_id = @host_id
     
      
      end
     
    end
      #uploading the data into the database tables and saving theexscriptm
    
    host_data = HostData.new(
      :Free_memory => free_mem,
      :Used_memory => used_mem,
      :Shared_memory => shared_mem,
      :Buffered_memory => buffered_mem,
      :Total_diskpace => total_diskspace,
      :Free_diskpace => free_diskspace,
      :Used_diskpace => used_diskspace,
      :Host_id => @host_id,
      :Mac_address=> @mac_address,
      :Load_average => load_average,
      :Host_name=>host_name,
      :Usage_percent => usage_percent,
      :Date_updated=> Time.now,
      :Date_created=> Time.now
     
    )
    host_data.save
      
  end

end 
