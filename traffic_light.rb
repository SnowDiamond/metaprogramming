class TrafficLight
  attr_reader :state
  
  class State
    def to_s
      name
    end

    def name
      self.class.name.split('::').last.downcase
    end

    def signal(traffic_light)
      traffic_light.turn_on_lamp(color.to_sym)
    end
  end

  class Stop < State
    def color; 'red'; end
    def next_state; Proceed.new; end
  end

  class Proceed < State
    def color; 'yellow'; end
  end

  def next_state
    @state.next_state
  end

  def signal
    @signal.signal(self)
  end

  def change_to(state)
    @state = State(state)
  end

  private
    def State(state)
      case state
      when State then state
      else self.class.const_get(state.to_s.capitalize).new
      end
    end
end

p traffic = TrafficLight.new
traffic.change_to(:stop)
p traffic.state.name
p traffic.next_state.name
p TrafficLight::State === TrafficLight::Stop.new
