def translate(string)
  vowels=["a","e","i","o","u"]
  temp3=[]
  string.split(" ").each  {
    |p| vowels.include?(p[0]) ?
    temp3<<=p+"ay" : temp3<<(p.split(/(\A[^aeiou]*qu|\A[^aeiou]+)/).reverse.join)+"ay"}
    temp3.join(" ")
end

#temp.each do |p| vowels.include?(p[0]) ? p=p+"ay" : (string.split(/(\b[^aeiou]+)/).reverse.join)+"ay"

# def translate(string)
#   vowels=["a","e","i","o","u"]
#    if vowels.include?(string[0])
#      string=string+"ay"
#    else
#      #temp=string.split(/(\b[^aeiou]+)/)
#      #tempString='f'
#      #piggedUp=['']
#      #tempString=piggedUp.collect { |p| string.split(/(\b[^aeiou]+)/).reverse.join }
#      (string.split(/(\b[^aeiou]+)/).reverse.join)+"ay"
#      #string.split()#.each do |p| (string.split(/(\b[^aeiou]+)/).reverse.join)+"ay" end
#    end
#
# end


#split string at word bounds => map as elements to array
#process each element
#   whatever processing
# join array to string with spaces inbetween.
