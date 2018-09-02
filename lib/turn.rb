# code your #valid_move? method here
def valid_move?(board, position)
  if position_taken?(board, position) != true && position < 9 && position >= 0
    return true
  else
    return false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!


def input_to_index(move)
  puts = "TEST"
  move.to_i - 1
end

def move(board, move_num, player = "X")
  board[move_num] = player
  return board
end

def turn(board)
    puts "Please enter 1-9:"
    input_string = gets.strip
    input = input_to_index(input_string)
    
    if valid_move?(board, input) == true
      display_board(move(board, input))
    else
      puts "Invalid Selection!"
      # turn(board)
    end
end



