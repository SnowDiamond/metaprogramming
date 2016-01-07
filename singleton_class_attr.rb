module MyModule
  def my_method
    puts 'Yes!!'
  end
end

class MyClass 
  class << self
    attr_accessor :title
    include MyModule
  end
end

# MyClass.title = 'Hello!'
# puts MyClass.title
MyClass.my_method


