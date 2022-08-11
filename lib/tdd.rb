
require 'byebug'
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

  def stock_picker
    max = 0
    days = [0, 0]
    # debugger
    (0...self.length).each do |i|
      (i+1...self.length).each do |j|
        price_dif = self[j] - self[i]
        if price_dif > max
          days[0] = i
          days[1] = j
        end
      end
    end
    days
  end
end
