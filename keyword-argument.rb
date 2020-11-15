def foo(k: 1)
  p k
end

h = { k: 42 }

foo(**h)

# foo(h)

def bar(h, **args) = p(h)

bar({k: 42})
# bar(k: 42)
