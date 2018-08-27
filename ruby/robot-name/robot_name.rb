class Robot

  attr_accessor :name

  @used_names = []

  def initialize
    @name = Robot.create_name
  end

  def reset
    @name = Robot.create_name
  end

  def self.create_name
    letters = (0..1).map { (65 + rand(26)).chr }.join
    numbers = (0..2).map { rand(9) }.join
    name = "#{letters}#{numbers}"
    name = create_name if @used_names.include?(name)
    @used_names << name
    name
  end

  def self.forget
    
  end
end