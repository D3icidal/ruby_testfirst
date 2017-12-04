=begin
    MEASURE
    default argument of 1 (because sometimes it is passed a int for repeating the block)
    API Time.parse is used, startTime to declare time at start of method
        [time - other_time → float] OR [time - numeric → time]
    count.times {yield} (performs block n times)

=end

def measure (count = 1)
    startTime = Time.now                #Time.now returns Time obj with date such as 2002-01-01 00:00:00 -0500
    count.times {yield}                 #Run block n times
    #tempTimeInt=(Time.now-startTime)   #deprec- Already returns float. Ruby can do math on float - int
    (Time.now-startTime) / count        #(Time.now-startTime) will return float
end


