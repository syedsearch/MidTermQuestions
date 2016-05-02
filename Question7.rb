

str = 'Jack and Jill went up the hill to fetch a pail of water'
map = {'a' => '*', 'e'=>'*', 'i'=>'*','o'=>'*','u'=>'*'}
map.each {|k,v| str.sub!(k,v)}
puts str


str1 = 'Jack and Jill went up the hill to fetch a pail of water'
map = {'a' => '*', 'e'=>'*', 'i'=>'*','o'=>'*','u'=>'*'}
map.each {|k,v| str1.gsub!(k,v)}
puts str1

str2 = 'In the end there may be more than one.'
str2.sub!("may be more than one.","can only be")
puts str2

str3 = 'Big bob told little bob to take baby bob home'
str3.gsub!("bob","Bob")
puts str3

str4 = 'Bob Sue Sam Dick Jane Peter Paul John'
str4.gsub!(" ",",")
puts str4

str6 = "804-991-3434 #Client phone number"
str6.gsub(/#.*/, '')
puts str6