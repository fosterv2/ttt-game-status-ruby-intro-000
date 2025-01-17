# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
#  for each win_combination in WIN_COMBINATIONS
    position_1 = board[win_combination[0]]
    position_2 = board[win_combination[1]]
    position_3 = board[win_combination[2]]
    if position_taken?(board, win_combination[0])
      if position_1 == position_2 && position_2 == position_3
        return win_combination # return the win_combination indexes that won.
      end
    end
  end
  false
end

def full?(board)
  if !board.find{|element| element == " "}
    true
  else
    false
  end
end

def draw?(board)
#  if !full?(board)
#    false
#  else
#    if win?(board)
#      false
#    else
#      true
#    end
  if full?(board)
    if !won?(board)
      return true
    end
  end
  false
end

def over?(board)
  if won?(board).class == Array
    true
  elsif draw?(board)
    true
  else
    false
  end
end

def winner(board)
  if !won?(board)
    nil
  else
    pos = won?(board)[0]
    board[pos]
  end
end
