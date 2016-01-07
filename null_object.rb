class NullObject < BasicObject
  def method_missing(*)
    self
  end

  def respond_to?(name)
    true
  end
end

null = NullObject.new
p null.hello.hello.world
