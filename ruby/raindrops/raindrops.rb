class Raindrops
  class << self   
    def convert(num)
      raindrops = { 3 => "Pling", 5 => "Plang", 7 => "Plong" }
      conversion = ""
      raindrops.each do |factor, translation|
        conversion = "#{conversion}#{translation}" if num % factor == 0
      end
      conversion.empty? ? num.to_s : conversion
    end
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end