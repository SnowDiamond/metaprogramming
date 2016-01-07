class Yuhu

  def initialize(x)
    @x = x
  end

  def action
    @x
  end
end

# yuhu = Yuhu.new(3)
# action = yuhu.method :action
# p action.to_proc
# p action.call
# p define_method action.to_proc


def import_country_data(country_id, &security_rule)
  security_rule.call(country_id)
end

l = -> (x) { puts "hello from lambda, country is: #{x}" }

import_country_data(40, &l)
