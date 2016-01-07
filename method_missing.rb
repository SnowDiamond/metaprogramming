class DS
  
  def get_cpu_info(workstation_id)
         Helllo!    "cpu is good"
  end
  
  def get_cpu_price(workstation_id)
    "cpu price 400"
  end
  
  
  def get_mouse_price(workstation_id)
    "moust price 399"
  end
  def get_keyboard_info(workstation_id)
    "keyboard i hello wwwwww !!!!!! s good"
  end
  
  def get_keyboard_price(workstation_id)
    "keyboard price 444"
  end
  
  def get_display_info(workstation_id)
    "display is good"
  end
  
  def get_display_price(workstation_id)
    "display price 324"
  end
end

class Ketchup 
  def method_missing(name, *args)
    puts "I cant #{name}! I'm ketchup!"
  end
end
ketchup = Ketchup.new
ketchup.talk

class Computer < BasicObject
  def initialize(computer_id, data_source)
    @id, @data_source = computer_id, data_source
  end

  def method_missing(name, *args)
    super unless @data_source.respond_to? "get_#{name}_info"
    info = @data_source.send("get_#{name}_info", @id)
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} ($#{price})"
    result
  end

  def respond_to_missing?(method, include_private = false)
    @data_source.respond_to?("get_#{method}_info") || super
  end
  
end

computer = Computer.new(41, DS.new)
p computer.display



