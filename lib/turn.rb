
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board[index]== "" || board[index]== " "
    false
  elsif board[index]== "X" || board[index]=="O"
    true
 else
   false
  end
end


def valid_move?(board,index)
  if position_taken?(board,index) || !index.between?(0,8)
    return false
  else
    return true
  end
end

def input_to_index(input)
    input.to_i - 1
end

def move(board,input, char="X")
  board[input]= char
end

def turn(board)
  puts "Please enter 1-9"
   input=gets
   if input_to_index(input)==valid_move?(board,index)
       if valid_move?(board,index)==true
         puts (board)
         if valid_move?(board,index)==false
           puts "Please enter 1-9"
     end
   end
  end
end
