class Operator
  def initialize(algorithm)
    @algorithm = algorithm
  end

  def calculator
    if algorithm.include?("+")
      addition
    elsif algorithm.include?("*")
      multiplication
    elsif algorithm.include?("-")
      subtraction
    elsif algorithm.include?("/")
      division
    end
  end

  private

  attr_reader :algorithm

  def addition
    format(algorithm).reduce(&:+)
  end

  def multiplication
    format(algorithm).reduce(&:*)
  end

  def subtraction
    format(algorithm).reduce(&:-)
  end

  def division
    format(algorithm).reduce(&:/)
  end

  def format(val)
    val.to_s.gsub(/[=]/,"").split(/[+,*,\/,-]/).map(&:to_i)
  end
end