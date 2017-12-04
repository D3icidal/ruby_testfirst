class Dictionary
  
  def initialize(entries={})
      @entries={}
  end
  
  def entries
      @entries
  end
  
#   (person[:hair] = 'brown'd)
  
  def add (entry)
      entry.class == String ? @entries.merge!(entry => nil) : @entries.merge!(entry)
  end
  
  def keywords
      @entries.keys
  end
  
  def include? (searchTerm)
      @entries.key?(searchTerm) ? true : false
  end
  
  def find (searchTerm)
      return @entries.assoc(searchTerm)
    #   if @entries[:searchTerm].empty? 
    #       return @entries
    #   end
  end

end
