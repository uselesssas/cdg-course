# frozen_string_literal: true

require_relative '../greeting'

# rubocop:disable Layout/LineLength, Lint/MissingCopEnableDirective
RSpec.describe '#greeting' do
  it 'does ok for age > 18' do
    expect(greeting('Даниил', 'Доманецкий', 18)).to eq('Привет, Даниил Доманецкий. Самое время заняться делом!')
  end

  it 'does ok for age < 18' do
    expect(greeting('Даниил', 'Доманецкий', 17)).to eq('Привет, Даниил Доманецкий. ' \
                                                       'Тебе меньше 18 лет, но начать учится программировать никогда не рано')
  end
end
