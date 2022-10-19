# frozen_string_literal: true

def cs(word)
  if /CS$/.match?(word) # слово заканчивается 'CS'?
    2**word.length
  else
    word.reverse
  end
end

print 'Введите слово: '
print cs(gets.chomp)
