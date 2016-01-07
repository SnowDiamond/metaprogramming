def f_cool(x, y)
  yield(x, y) + x
end
hello = 1
p f_cool(2, 3) { |x, y|   }
