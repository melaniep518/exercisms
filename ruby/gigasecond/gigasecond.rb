require 'time'
require 'date'

class Gigasecond
  class << self
    def from(birthdate)
      birthdate + 10**9
    end   
  end
end

module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end