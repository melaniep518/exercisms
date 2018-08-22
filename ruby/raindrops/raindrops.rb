class Raindrops
  class << self   
    def convert(num)
      string = ""
      if num % 3 == 0
        string = "#{string}Pling"
      end
      if num % 5 == 0
        string = "#{string}Plang"
      end
      if num % 7 == 0
        string = "#{string}Plong"
      end
      if string.empty? 
        "#{num}"
      else
        string
      end
    end
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end