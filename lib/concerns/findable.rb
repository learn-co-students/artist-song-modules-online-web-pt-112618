module Findable #class methods
  def find_by_name(name) #have to remove self
    self.all.detect{|a| a.name == name}
  end

end
