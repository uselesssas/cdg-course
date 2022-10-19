# frozen_string_literal: true

require_relative '../cs'

RSpec.describe '#search_letters' do
  it 'is ok for a word ending with CS' do
    expect(cs('HelloCS')).to eq(128)
  end

  it 'is ok for a word ending in CS in lowercase' do
    expect(cs('Hellocs')).to eq('scolleH')
  end

  it 'is ok for words not ending in CS' do
    expect(cs('HeCSllo')).to eq('ollSCeH')
  end

  it 'is ok for words not ending in CS' do
    expect(cs('CSHello')).to eq('olleHSC')
  end
end
