def reverser
    # tempStr=""
    tempAry=[]
    yield.split(" ").each { |x| tempAry<<x.reverse}
    tempAry.join(" ")
end

def adder (num=1)
    yield+num
end

def repeater (num=1)
    num.times { yield }
end