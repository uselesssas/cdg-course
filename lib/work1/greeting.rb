# frozen_string_literal: true

def greeting(name, surname, age)
  if age < 18
    "Привет, #{name} #{surname}. Тебе меньше 18 лет, но начать учится программировать никогда не рано"
  else
    "Привет, #{name} #{surname}. Самое время заняться делом!"
  end
end

print 'Введите Ваше имя: '
name = gets.chomp.capitalize
print 'Введите Вашу фамилию: '
surname = gets.chomp.capitalize
print 'Введите Ваш возраст: '
age = gets.to_i
p greeting(name, surname, age)
