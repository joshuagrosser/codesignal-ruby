require 'spec_helper'
require_relative '../lib/is_beautiful_string'

describe IsBeautifulString do
  it 'returns true for bbbaacdafe' do
    expect(IsBeautifulString.new.beautiful_string?('bbbaacdafe')).to be true
  end

  it 'returns false for aabbb' do
    expect(IsBeautifulString.new.beautiful_string?('aabbb')).to be false
  end

  it 'returns false for bbc' do
    expect(IsBeautifulString.new.beautiful_string?('bbc')).to be false
  end

  it 'returns false for abcdefghijklmnopqrstuvwxyzz' do
    expect(IsBeautifulString.new.beautiful_string?('abcdefghijklmnopqrstuvwxyzz')).to be false
  end

  it 'returns false for fyudhrygiuhdfeis' do
    expect(IsBeautifulString.new.beautiful_string?('fyudhrygiuhdfeis')).to be false
  end
end

