class MyClass
  def some_method
    x = "Hello"
    puts eval "self", TOPLEVEL_BINDING
    binding
  end
end

b_scope = MyClass.new.some_method

puts eval("x", b_scope)
