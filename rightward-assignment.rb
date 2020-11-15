fib = Enumerator.new do |y|
  a = b = 1
  loop do
    y << a
    a, b = b, a + b
  end
end

fib.take(10).last => x
p x

fib.take(52).last => x
p x
