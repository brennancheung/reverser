require "reverser/version"

module Reverser
  class Reverser
    def self.reverse(str)
      raise "string required" unless str.is_a? String
      words = str.split ' '
      words.reverse.join ' '
    end
  end
end
