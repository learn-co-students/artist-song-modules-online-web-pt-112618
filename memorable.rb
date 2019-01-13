require_relative '../lib/concerns/memorable'

  class Artist 
   self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
end 

class Song 
  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
  
end
