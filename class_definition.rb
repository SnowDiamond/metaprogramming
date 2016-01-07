class Cool
  puts 'hello'

  def first
    puts "I'm first"
    def second
      puts "I'm second"
    end
  end
end

result = class BigBang
  self
end

p result

def action
  puts 'Yuuuhuuu!!!'
end

cool = Cool.new
cool.send(:action)
p self.class
p cool.second
