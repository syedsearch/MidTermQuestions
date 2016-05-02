
class QuestionZero
	
	
	def squared_sum(a,b)
		c = a.to_i + b.to_i
		squraredValue = c*c
		puts "Squares Sum Value= #{squraredValue}"	
	end
	
	def sort_array_plus_one(a)
		a.sort
		modifiedarr = a.map! {|x| x+1}
		modifiedarr.each {|x| puts x}
	end
	
	def combine_name(first_name,last_name)
		puts "#{first_name} #{last_name}"
	end

end


a = ARGV[0]
b = ARGV[1]

new_object = QuestionZero.new
new_object.squared_sum(a,b)

numbers = [12,21,6,4]
new_object.sort_array_plus_one(numbers)

new_object.combine_name('Syed','Sulthan')
