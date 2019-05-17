class DashboardController < ApplicationController
  def index
  end  

  def check_process
    if params[:checked] == "true"
      IO.popen("firefox")
    else  
      r = IO.popen("ps aux | grep firefox")
      status = r.read.split(/\n/)
      @pids = status.map{|aa| aa.match(/\ {2,8}(\d{3,6})/)[0].strip}.join(' ')
      r = IO.popen("kill -9 #{@pids}")
    end  
  end

end
