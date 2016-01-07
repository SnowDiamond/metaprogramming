class MyBind
  
  def my_method
    x = 12
    binding    
  end
end
b = MyBind.ew.my_method # return binding object
p b.class
