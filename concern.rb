class C
 HELLO = 'hello C' 
end

class D < C
  HELLO = 'hello D'
end

p D.ancestors
puts D < Object

p C.const_get(:HELLO)
