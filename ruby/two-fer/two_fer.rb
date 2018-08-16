class TwoFer
  class << self
    def two_fer(name = 'you')
      "One for #{name}, one for me."
    end
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end