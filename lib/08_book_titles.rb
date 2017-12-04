#is this the same as project 3? Why is this one out here
class Book
  # TODO: your code goes here!
  def initialize (string="")
      @title=string
  end
  
  def title=(orgTitle)                                      #setter
      smallWordsAry = ["a","an","and","if","in","is","of","the"]
      tempAry=[]
      orgTitle.downcase
      orgTitle.split(" ").each { |x| (smallWordsAry.include? x) ? tempAry<<x.downcase : tempAry<<x.capitalize }
      @title=tempAry.join(" ")
      @title[0]=@title[0].capitalize    #theres gotta be a faster way @meme
  end
  
  def title                                                 #getter WHY ARE YOU GREEN?
    @title
  end
end
  
#   def initialize (string="")
#       @title=string
#   end
  
#   def title=(newTitle) #Setter
#     smallWordsAry = ["a","an","if","is","the","was"]              #the words to keep small in titles  # https://delim.co/#
#       tempAry=[]
#       string.split(" ").each { |x| x==smallWordsAry ? tempAry<<x.downcase : tempAry<<x.capitalize! }
#       tempAry.join(" ")
#     @title=titleze(newTitle)
#   end
# end
# =begin
  
# #   def titleze (string)
# #       smallWordsAry = ["a","an","if","is","the","was"]              #the words to keep small in titles  # https://delim.co/#
# #       tempAry=[]
# #       string.split(" ").each { |x| x==smallWordsAry ? tempAry<<x.downcase : tempAry<<x.capitalize! }
# #       tempAry.join(" ")
# #   end                                                               #why are you green?

# #   def titleize (string)
# #       temp=string.split
# #       if temp.length==1
# #         temp[0].capitalize
# #       else
# #         temp2=temp[0].capitalize
# #         i=1
# #         while i<temp.length do
# #           if i>0
# #             if ['and', 'the', 'of', 'for', 'over'].include? temp[i]
# #             temp2=temp2+" "+temp[i]
# #             else
# #               temp2=temp2+" "+temp[i].capitalize
# #             end
# #           else
# #             temp2=temp2+" "+temp[i].capitalize
# #           end
# #           i+=1
# #         end
# #         temp2
# #       end
# #     end
# end #green?! comment?
# =end