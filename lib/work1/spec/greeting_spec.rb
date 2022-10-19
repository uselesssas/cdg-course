# frozen_string_literal: true

require_relative '../greeting'

RSpec.describe '#greeting' do
  it 'should do ok for age > 18' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('даниил', 'доманецкий', 21)
    expect(greeting).to output('Привет, Даниил Доманецкий. Самое время заняться делом!')
  end

  it 'should do ok for age < 18' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('даниил', 'доманецкий', 17)
    expect(greeting).to output('Привет, Даниил Доманецкий.' \
                               'Тебе меньше 18 лет, но начать учится программировать никогда не рано')
  end
end
