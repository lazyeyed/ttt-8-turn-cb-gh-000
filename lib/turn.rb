def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  int = input.to_i - 1
end

def move(board, index, character="X")
  board[index] = character
end
