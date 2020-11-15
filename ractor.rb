require 'benchmark'

def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fib(n-2) + fib(n-1)
  end
end

N = 36

puts "Ractor n = #{N}"
puts Benchmark.measure {
  4.times.map {
    Ractor.new { fib(N) }
  }.each { |r| p r.take }
}

puts "Thread n = #{N}"
puts Benchmark.measure {
  4.times.map {
    Thread.new { fib(N) }
  }.each { |t| p t.value }
}
