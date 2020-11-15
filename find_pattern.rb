case ["a", 1, "b", "c", 2, "d", "e", "f", 3]
in [*pre, String => x, String => y, *post]
  p pre
  p x
  p y
  p post
end

case ["a", 1, "b", "c", 2, "d", "e", "f", 3]
in [*pre, String => x, Integer => y, *post]
  p pre
  p x
  p y
  p post
end
