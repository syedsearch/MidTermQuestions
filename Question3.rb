


def method1
  x = 11
  method2 do |x|
    puts x
end end 

def method2
  x = 22
yield 33 end 

def method3
  x = 11
  method2 do |y|
    puts x
end end 





# method1 = Value is 33

# method3 - Values is 11

#Two Advantages - 

#1. Implementing Test Coverage and Profilers - Able to check if the particluar code is invoked by your test suites.

#2. Language Migration - #I've gotten the most use out of metaprogramming for bridging between different APIs.
#A working example would be FireBreaths JSAPIAuto1 that eases writing C++ classes that are exposed to JavaScript. By providing a registering facility for the functions that are to be exposed, the argument types can be inspected and from that fitting code generated at compile-time that converts from the script-API-types to native C++ types and back, even directly supporting map, vector, etc.
#(d) In your opinion, which programming language is better, Ruby or Javascript? List 2 specific reasons to justify your choice. 

(d) In your opinion, which programming language is better, Ruby or Javascript? List 2 specific reasons to justify your choice. 



