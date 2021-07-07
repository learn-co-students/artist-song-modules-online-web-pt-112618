module Findable 
    
  def find_by_name(name)
    if self == Artist
      class_variable_get(:@@artists).detect{|a| a.name == name} 
    elsif self == Song 
      class_variable_get(:@@songs).detect{|a| a.name == name} 
    end  
  end
    
end 
