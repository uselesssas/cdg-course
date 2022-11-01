# frozen_string_literal: true

def ends_with_cs?(word)
  if /CS$/.match?(word)
    2**word.length
  else
    word.reverse
  end
end

print 'Введите слово: '
puts ends_with_cs?(gets.chomp)
