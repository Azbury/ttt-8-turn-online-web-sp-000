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
