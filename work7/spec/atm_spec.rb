# frozen_string_literal: true

require_relative '../atm'

# rubocop:disable RSpec/MultipleExpectations, Lint/MissingCopEnableDirective
RSpec.describe ATM do
  before do
    File.write('balance.txt', '500.0', mode: 'w')
  end

  # after do
  #   File.delete('balance.txt') if File.exist?('balance.txt')
  # end

  it '#balance' do
    expect { subject.balance }.to output("Ваш баланс: 500.0\n").to_stdout
  end

  it '#deposit' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("d\n", -1, 100, "q\n")
    expect(subject.interface)
    expect { subject.balance }.to output("Ваш баланс: 600.0\n").to_stdout
  end

  it '#withdraw' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("w\n", -1, 501, 100, "q\n")
    expect(subject.interface)
    expect { subject.balance }.to output("Ваш баланс: 400.0\n").to_stdout
  end

  it 'checking menu operation' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("b\n", "d\n", 0, "w\n", 0, "q\n")
    expect(subject.interface)
    expect { subject.balance }.to output("Ваш баланс: 500.0\n").to_stdout
  end
end
