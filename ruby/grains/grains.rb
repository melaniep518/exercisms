class Grains
  class << self
    def square(num)
      unless num.between?(1, 64) 
        raise ArgumentError.new("Number should be between 1 and 65")
      end
      2 ** (num - 1)
    end

    def total
      (2 ** 64) - 1 
    end
  end
end