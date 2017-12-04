def echo(string)
  string
end

def shout (string)
  string.upcase
end

# def repeat (string)
#   string+" "+string
# end

# #
# def repeat (string, count)
#   i=0
#   while i<count do
#     string
#     i+=1
#   end
# end

def repeat (*args)
  if args.length == 1
    repeat_Call(args[0],1)
  else
    repeat_Call(args[0],args[1]-1)
  end
end

def start_of_word (string,count)
  i=0
  temp=""
  while i<count do
    temp=temp+string[i]
    i+=1
  end
  temp
end

def first_word (string)
  string.split[0]
end

# def titleize (string)
#   temp=string.split
#   temp.each do |p| p.capitalize end
#   temp
# end

def titleize (string)
  temp=string.split
  if temp.length==1
    temp[0].capitalize
  else
    temp2=temp[0].capitalize
    i=1
    while i<temp.length do
      if i>0
        if ['and', 'the', 'of', 'for', 'over'].include? temp[i]
          temp2=temp2+" "+temp[i]
        else
          temp2=temp2+" "+temp[i].capitalize
        end
      else
        temp2=temp2+" "+temp[i].capitalize
      end
      i+=1
    end
    temp2
  end
end



#
# =>  INTERNAL
#

def repeat_Call (string, count)
  i=0
  fullstring=string
  while i<count do
    fullstring=fullstring + " " + string
    i+=1
  end
  fullstring
end
