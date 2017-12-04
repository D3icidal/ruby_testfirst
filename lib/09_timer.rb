class Timer
   
  def initialize(seconds = 0)
    @seconds = seconds
  end
  
  def seconds=(timeInSeconds)
    @seconds = timeInSeconds
  end
  
  def timer
     @timer
  end
  
  def seconds
     @seconds
  end
  
   def time_string
      # ss=0
      # mm=0
      # overMM=0.0 #
      # hh=0
      # if @seconds<59
      #  timeStr="00:00:%02d" % [@seconds]
      # end
      ss= @seconds%60
      # overMM= @seconds/60
      mm= (@seconds/60)%60
      hh= (@seconds/60)/60
      # timeStr="%02d:%02d:%02d" % [hh,mm,ss] 
      "#{padded(hh)}:#{padded(mm)}:#{padded(ss)}"
   end

   def padded(num=0)
      paddedStr="%02d" % [num]
   end
end
# Formate for time_string is HH:MM:SS
# if seconds 3630  (then it should be 01:00:30)


#    ss = 3630mod60              (# 30)
#    tempMM = 3630/60
#    hh = mm / 60
#    mm = (3630/60) mdo 60
   
#    60.5