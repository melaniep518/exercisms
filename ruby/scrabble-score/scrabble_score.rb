require 'active_support'
require 'active_support/core_ext'

class Scrabble
  def initialize(s)
    @characters = (s || '').upcase.split('')
  end

  def score
    letter_score = @characters.map do |c|
      letter_value(c.to_sym)
    end
    letter_score.compact.sum
  end

  def self.score(s)
    self.new(s).score
  end

  def letter_value(l)
    rubric = {
      A: 1, B: 3, C: 3, D: 2, E: 1, F: 4, G: 2, H: 4, I: 1, J: 8, K: 5,
      L: 1, M: 3, N: 1, O: 1, P: 3, Q: 10, R: 1, S: 1, T: 1, U: 1, V: 4,
      W: 4, X: 8, Y: 4, Z: 10
    }

    rubric[l]
  end
end