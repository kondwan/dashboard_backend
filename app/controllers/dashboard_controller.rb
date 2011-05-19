require'will_paginate'
class DashboardController < ApplicationController
  
  #exporting file contents to the database
  def index   
  end
  
  #reading some of the file contents
  
  def index
   @arr = IO.readlines("/home/meduser/client_data/host_data.txt")
      @array = IO.readlines("/home/meduser/client_data/any.txt")
      @mac =@array[8]
       @ipwireless =@array[9]
        @wired =@array[10]
   @line1 =@arr[0]
   @second= @arr[1]
   @first = @arr[2]
   @third = @arr[3]
   @fourth= @arr[4]
    @fif= @arr[5]
    @six= @arr[6]
     @seven= @arr[7]
      @eight= @arr[8]
       @nine= @arr[9]
        @ten= @arr[10]
        @eleven= @arr[11]
         @twelve= @arr[12]
          @thirteen= @arr[13]
           @fourteen= @arr[14]
            @fifteen= @arr[15]
             @sixteen= @arr[16]
             @seventeen= @arr[17]
             @eighteen= @arr[17]
        
  end
  def get
  @arr[0] = Dashboard.new
  end
    
end
