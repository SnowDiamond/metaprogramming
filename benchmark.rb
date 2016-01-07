require 'benchmark'

str = Benchmark.measure do
  10_000_000.times do
    'test' == 'test'
  end
end.total

sym = Benchmark.measure do
  10_000_000.times do
    :test == :test
  end
end.total

puts "String: #{str}"
puts "Symbol: #{sym}"
