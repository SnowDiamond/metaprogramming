$SAFE = 0

def explore_array(method)
  code = "['a', 'b', 'c'].#{method}"
  puts "Evaluating: #{code}"
  eval code
end

loop do
  print '>> '
  p explore_array(gets())
end
