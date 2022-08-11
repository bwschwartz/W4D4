class TowersOfHanoi

  attr_accessor :stacks

  def initialize
    @stacks = [[2, 1, 0], [], []]
    @won = false
  end

  def play
    until won?
      p "Choose a start and end tower"
      input = gets.chomp
      start_tower = input[0].to_i
      end_tower = input[-1].to_i

      moved = false
      until moved
        moved = move(start_tower, end_tower)
        if !moved
          puts "Invalid move. Try again!"
          break
        end
      end
      our_print
    end
    puts "You won!"
  end

  def won?
    stacks[-1].length == 3
  end

  def move(start_tower, end_tower)
    unless stacks[start_tower].empty?
      if stacks[end_tower].empty? || stacks[start_tower][-1] < stacks[end_tower][-1]
        disk = stacks[start_tower].pop
        stacks[end_tower] << disk
        return true
      else
        false
      end
    end
    false
  end


  def our_print
    stacks.each do |stack|
      puts
      print stack.join(" ")
      puts
    end
  end

end