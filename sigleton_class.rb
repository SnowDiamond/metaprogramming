class C
end

class D < C
  class << self
    def sigle_class_method
      puts "I'm method in class singleton class"
    end
  end
end

obj = D.new

class << obj
  def my_sigle_method
    puts "Yes, I'm sigle method!"
  end
end

# obj.my_sigle_method
s_class = obj.singleton_class
# p s_class.instance_methods.grep(/my_/)
# p obj.class
# p s_class.superclass
p d_sigleton = D.singleton_class
p d_sigleton.ancestors


class MyOwn
end

# p MyOwn.superclass
# p Object.superclass
# p BasicObject.superclass
