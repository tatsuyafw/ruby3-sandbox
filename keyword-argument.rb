def foo(k: 1)
  p k
end

h = { k: 42 }

foo(**h)

foo(h)
