# code for #display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code for #input_to_index method
def input_to_index(user_input)
  user_input.to_i - 1
end

# code for #position_taken? method
def position_taken?(board, index)
  board[index] != " "
end

# code for #valid_move? method
def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, character = "X")
    display_board(board)
  else
    turn(board)
  end
end
