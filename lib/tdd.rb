require 'rspec'

class Array

  def my_uniq
    unique = []
    self.each { |el| unique << el unless unique.include?(el) }
    unique
  end

end
