def add (first, second)
  first+second
end

def subtract (first, second)
  first-second
end

def sum (array)
  temp=0.0
  if array.size==0
    # array << 0
    0
  else
    array.each do |p| temp=temp+p  end
    temp
  end
end