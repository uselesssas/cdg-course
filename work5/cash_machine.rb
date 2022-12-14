# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength, Lint/MissingCopEnableDirective
class CashMachine
  BALANCE_FILE_PATH = 'balance.txt'
  DEFAULT_BALANCE = 100.0

  def initialize
    @balance = if File.file?(BALANCE_FILE_PATH) && !File.zero?(BALANCE_FILE_PATH)
                 File.readlines(BALANCE_FILE_PATH).first.to_f
               else
                 DEFAULT_BALANCE
               end
  end

  def balance
    puts "Ваш баланс: #{@balance}"
  end

  def deposit
    loop do
      puts 'Введите сумму для внесения депозита (0 - ВЫЙТИ).'
      print 'Ввод: '
      amount = gets.to_f
      break if amount.zero?

      if amount.negative?
        puts 'Ошибка: сумма депозита не может быть отрицательной!'
      else
        @balance += amount
        break
      end
    end
  end

  def withdraw
    loop do
      puts 'Введите сумму для вывода средств (0 - ВЫЙТИ).'
      print 'Ввод: '
      amount = gets.to_f
      break if amount.zero?

      if amount.negative?
        puts 'Ошибка: сумма для вывода не может быть отрицательной!'
      elsif amount > @balance
        puts 'Ошибка: недостаточно средств для вывода!'
      else
        @balance -= amount
        break
      end
    end
  end

  def init
    loop do
      print "----Меню----\n" \
            "D (ДЕПОЗИТ)\n" \
            "W (ВЫВЕСТИ)\n" \
            "B (ПОКАЗАТЬ БАЛАНС)\n" \
            "Q (ВЫЙТИ)\n" \
            'Ввод: '
      input = gets.chomp.downcase
      case input
      when 'd'
        deposit
      when 'w'
        withdraw
      when 'b'
        balance
      when 'q'
        break
      else
        next
      end
    end
    File.write(BALANCE_FILE_PATH, @balance)
  end
end

# CashMachine.new.init
