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


end
