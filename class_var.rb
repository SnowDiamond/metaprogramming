class C
  @@var = 1

  def get_var
    puts @@var
  end
end

class D < C
  def change
    @@var = 2
  end
end

c = C.new
d = D.new
d.change
c.get_var
d.get_var


mc = Class.new(Array) do
  def my_method
    'Hello!'
  end
end

my = mc.new
MyClass = mc
p my.inspect
puts my.my_method
p MyClass.ancestors
