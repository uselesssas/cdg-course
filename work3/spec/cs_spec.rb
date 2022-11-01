# frozen_string_literal: true

require_relative '../cs'

RSpec.describe '#search_letters' do
  it 'is ok for a word ending with CS' do
    expect(ends_with_cs?('HelloCS')).to eq(128)
  end

  it 'is ok for a word ending in CS in lowercase' do
    expect(ends_with_cs?('Hellocs')).to eq('scolleH')
  end

  it 'is ok for words not ending in CS' do
    expect(ends_with_cs?('HellCSo')).to eq('oSClleH')
  end
end
