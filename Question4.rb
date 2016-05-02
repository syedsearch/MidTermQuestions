
class Troll
	#accessor method for the VendorFood values
	@@grunt
	attr_accesor :ugliness, :smelliness,:strength
	def initialize(val="UNGAH")
		@@grunt = "UNGAH"
	end
	
	def speak()
		puts @@grunt*42
	end
	
	def reverse()
		puts @@grunt.reverse
	end
	
	def self.propogate
		someinstance = Troll.new("eegah") 
	end
    
  end

end



