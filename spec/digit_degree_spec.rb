# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/digit_degree'

describe DigitDegree do
  it 'returns 2 for 91' do
    expect(DigitDegree.new.digitDegree(91)).to eq(2)
  end

  it 'returns 0 for 5' do
    expect(DigitDegree.new.digitDegree(5)).to eq(0)
  end

  it 'returns 1 for 100' do
    expect(DigitDegree.new.digitDegree(100)).to eq(1)
  end

  it 'returns 2 for 99' do
    expect(DigitDegree.new.digitDegree(99)).to eq(2)
  end

  it 'returns 1 for 304' do
    expect(DigitDegree.new.digitDegree(304)).to eq(1)
  end
end
