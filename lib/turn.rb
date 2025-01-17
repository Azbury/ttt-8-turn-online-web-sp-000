def position_taken? (board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
  else
    true
  end
end

def valid_move? (board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  else
    false
  end
end

def display_board(marks)
  puts " #{marks[0]} | #{marks[1]} | #{marks[2]} "
  puts "-----------"
  puts " #{marks[3]} | #{marks[4]} | #{marks[5]} "
  puts "-----------"
  puts " #{marks[6]} | #{marks[7]} | #{marks[8]} "
end

def input_to_index (input)
  input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
  board
end

def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn (board)
  end
end
