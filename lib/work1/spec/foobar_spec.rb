# frozen_string_literal: true

require_relative '../foobar'

RSpec.describe '#foobar' do
  it 'if none is equal to 20' do
    expect(foobar(5, 5)).to eq(10)
  end

  it 'if foo = 20' do
    expect(foobar(20, 10)).to eq(10)
  end

  it 'if bar = 20' do
    expect(foobar(10, 20)).to eq(10)
  end
end
