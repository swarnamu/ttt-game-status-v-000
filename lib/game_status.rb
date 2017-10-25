# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
                   [0,1,2], # top row
                   [3,4,5], # middle row
                   [6,7,8], # bottom row
                   [0,3,6], # left column
                   [1,4,7], # middle column
                   [2,5,8], # right column
                   [0,4,8], # left start diagonaly
                   [2,4,6] # right start diagonaly
                 ]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    if (board[win_combination[0]] == "X" && board[win_combination[1] == "X"] && board[win_combination[2] == "X"])
      return win_combination
    elsif (board[win_combination[0]] == "O" && board[win_combination[1] == "O"] && board[win_combination[2] == "O"])
      return win_combination  
    end
  end
end

def full?(board)
  board.none? do |i|
    i == " " || i.nil?
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end
