require 'spec_helper'
require_relative '../lib/is_beautiful_string'

describe IsBeautifulString do
  it 'returns true for bbbaacdafe' do
    expect(IsBeautifulString.new.beautiful_string?('bbbaacdafe')).to be true
  end

  it 'returns true for bbbaacdafe' do
    expect(IsBeautifulString.new.beautiful_string?('aabbb')).to be false
  end

  it 'returns true for bbbaacdafe' do
    expect(IsBeautifulString.new.beautiful_string?('bbc')).to be false
  end

  it 'returns true for bbbaacdafe' do
    expect(IsBeautifulString.new.beautiful_string?('abcdefghijklmnopqrstuvwxyzz')).to be false
  end

  it 'returns true for bbbaacdafe' do
    expect(IsBeautifulString.new.beautiful_string?('fyudhrygiuhdfeis')).to be false
  end
end

