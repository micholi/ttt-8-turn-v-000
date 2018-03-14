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
  index = user_input.to_i - 1
end

# code for #position_taken? method
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

# code for #valid_move? method
def valid_move?(board, index)
  index.between?(0, 8) && position_taken?(board, index) == false
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  if !valid_move?(board, user_input)
    turn(board)
  else
    move(board, index, character = "X")
    display_board(board)
  end
end
