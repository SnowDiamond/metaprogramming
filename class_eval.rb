class Goblin ; end

goblin_class = Goblin

goblin_class.class_eval do
  def hello
    puts 'Hello'
  end
end

goblin = Goblin.new
goblin.hello
