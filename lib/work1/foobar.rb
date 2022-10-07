# frozen_string_literal: true

def foobar(foo, bar)
  if foo == 20
    bar
  elsif bar == 20
    foo
  else
    foo + bar
  end
end

p foobar(5, 5)
p foobar(20, 10)
p foobar(10, 20)
