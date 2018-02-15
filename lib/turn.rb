#display a board
def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts"-----------"
puts  " #{board[3]} | #{board[4]} | #{board[5]} "
puts"-----------"
puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end
#check a valid move
def valid_move?(board,index)
  if position_taken?(board,index)
    false
  elsif index.between?(0, 8)
    true
  end
end
#check a position taken
def position_taken?(board,index)
    board[index] == "X" || board[index] == "O"
end

def input_to_index(input)
  input .to_i - 1
end

def move(board,index,character = "X")
board[index] = character
end

#a turn
def turn(board)
  counter = 0
  loop do
  puts "Please enter 1-9:"
  input = gets.strip
index = input_to_index(input)

if valid_move?(board,index) == true
  move(board,index,"X")
  display_board(board)
else puts "Make another Move"
  display_board(board)

until counter = 10
break
end
end
end
