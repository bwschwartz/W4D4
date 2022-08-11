require 'rspec'

class Array

  def my_uniq
    unique = []
    self.each { |el| unique << el unless unique.include?(el) }
    unique
  end

  def two_sum
    pairs = []
    for i in (0...self.length)
      for j in (i + 1...self.length)
        pairs << [i, j] if self[i] + self[j] == 0
      end
    end
    pairs
  end

  def my_transpose
    width=self[0].length
    height = self.length
    tranpose = Array.new(height) {Array.new(width)}
    self.each_with_index do |row, i|
      row.each_with_index do |ele, j|
        transpose[j][i] = ele
      end
    end
    transpose
  end


end
