@liza = 'Hello'

def test
  yield
  p "inside test method: #{local_variables}"
  puts @liza
end

x = 1

test do
  x = 2
  y = 4
  puts @liza
  p "inside block defenition: #{local_variables}"
end

p "on top level: #{local_variables}"

class Closure
  @var1 = "Tut si"
  VAR1 = @var1

  def self.get_var
    p @var1
  end
end

Closure.get_var
p Closure::VAR1
