require 'test/unit'
# Here is the method that you should implement.
module CheckedAttributes
  def attr_checked(attribute, &validation)
    define_method attribute do
      instance_variable_get("@#{attribute}")
    end

    define_method "#{attribute}=" do |value|
      raise RuntimeError unless validation.call(value)
      instance_variable_set("@#{attribute}", value)
    end
  end

  def self.included(klass)
    klass.extend self
  end
end

class Person
  include CheckedAttributes
  attr_checked :age do |v|
    v >= 18
  end
end    
    





class TestCheckedAttributes < Test::Unit::TestCase
  def setup
    @bob = Person.new
  end
  def test_accepts_valid_values
    @bob.age = 18
    assert_equal 18, @bob.age
  end
  def test_refuses_invalid_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = 17
    end
  end
end


