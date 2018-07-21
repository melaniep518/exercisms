class Hamming
  class << self
    
    def compute(strA, strB)
      unless strA.length == strB.length 
        raise ArgumentError.new('Arguments must be equal in length')
      end
      differences = 0
      for i in 0..strA.length do
        if strA[i] != strB[i]
          differences += 1
        end
      end
      differences
    end
  
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end