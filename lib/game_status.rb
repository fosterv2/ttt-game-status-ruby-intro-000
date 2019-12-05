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

<<<<<<< HEAD
def won?(board)
=======
def win?(board)
>>>>>>> 9660615a800210c3d7a330dc9e139cfbc2e01304
  WIN_COMBINATIONS.each do |win_combination|
#  for each win_combination in WIN_COMBINATIONS
    position_1 = board[win_combination[0]]
    position_2 = board[win_combination[1]]
    position_3 = board[win_combination[2]]
<<<<<<< HEAD
    if position_taken?(board, win_combination[0])
      if position_1 == position_2 && position_2 == position_3
        return win_combination # return the win_combination indexes that won.
      end
    end
  end
  false
=======
    if position_taken(board, position_1)
      if position_1 == position_2 && position_2 == position_3
        return win_combination # return the win_combination indexes that won.
      else
        false
      end
    end
  end
>>>>>>> 9660615a800210c3d7a330dc9e139cfbc2e01304
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
<<<<<<< HEAD
    if !won?(board)
      return true
    end
  end
=======
    if !win?(board)
      return trueend
    end
>>>>>>> 9660615a800210c3d7a330dc9e139cfbc2e01304
  false
end

def over?(board)
<<<<<<< HEAD
  if won?(board).class == Array
=======
  if win?(board)
>>>>>>> 9660615a800210c3d7a330dc9e139cfbc2e01304
    true
  elsif draw?(board)
    true
  else
    false
  end
end

def winner(board)
<<<<<<< HEAD
  if !won?(board)
    nil
  else
    pos = won?(board)[0]
=======
  if !win?(board)
    nil
  else
    pos = win?(board)[0]
>>>>>>> 9660615a800210c3d7a330dc9e139cfbc2e01304
    board[pos]
  end
end
