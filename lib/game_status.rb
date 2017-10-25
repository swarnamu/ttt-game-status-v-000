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
  WIN_COMBINATIONS.find do |win_combination|
    board[win_combination[0]] == board[win_combination[1]] &&
    board[win_combination[0]] == board[win_combination[2]] &&
    position_taken(board, win_combination[1])
  end
end

def full?(board)
  board.none? do |i|
    i == " " || i.nil?
  end
end

def draw?(board)
  won?(board) == nil && full?(board) == true
end
