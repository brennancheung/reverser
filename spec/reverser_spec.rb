require 'Reverser'
require 'spec_helper'

describe Reverser do
  it "should return a string, not an array" do
    result = Reverser::Reverser.reverse 'I am string'
    expect(result).to be_a(String)
  end
  
  it "should return an empty string when passed an empty string" do
    result = Reverser::Reverser.reverse '' 
    expect(result).to eql ''
  end

  it "should raise an exception when it does not receive a string" do
    expect do
      Reverser::Reverser.reverse %w(one two three)
    end.to raise_error("string required")
  end
    
  it "should return the same string when passed a 1 word string" do
    result = Reverser::Reverser.reverse 'same' 
    expect(result).to eql 'same'
  end

  it "should reverse the words when passed multiple words in a string" do
    result = Reverser::Reverser.reverse 'one two three'
    expect(result).to eql 'three two one'
  end
end
