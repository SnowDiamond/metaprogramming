class DS
  def initialize
  end

  def get_cpu_info(workstation_id)
    "cpu is good"
  end
  
  def get_cpu_price(workstation_id)
    "cpu price 400"
  end
  
  def get_mouse_info(workstation_id)
    "mous is good"
  end
  
  def get_mouse_price(workstation_id)
    "moust price 399"
  end
  
  def get_keyboard_info(workstation_id)
    "keyboard is good"
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

class Computer
  def initialize(computer_id, data_source)
    @id, @data_source = computer_id, data_source
    data_source.methods.grep(/^get_(.*)_info$/) { Computer.define_component $1 }
  end

  def self.define_component(name)
    define_method name do
      info = @data_source.send "get_#{name}_info", @id
      price = @data_source.send "get_#{name}_price", @id
      result = "#{name.capitalize}: #{info} ($#{price})"
      result
    end
  end
end

comp = Computer.new(42, DS.new)
comp.mouse
comp.cpu
p comp.keyboard
comp.display






