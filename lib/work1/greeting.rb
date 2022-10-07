# frozen_string_literal: true

def greeting
  print 'Введите Ваше имя: '
  name = gets.chomp.capitalize
  print 'Введите Вашу фамилию: '
  surname = gets.chomp.capitalize
  print 'Введите Ваш возраст: '
  age = gets.to_i

  if age < 18
    puts "Привет, #{name} #{surname}. Тебе меньше 18 лет, но начать учится программировать никогда не рано"
  else
    puts "Привет, #{name} #{surname}. Самое время заняться делом!"
  end
end

greeting
