#draw board
board = [
	[" "," "," "],
	[" "," "," "],
	[" "," "," "]
]

def draw_board(board)
	i = 0
	while i < (board.length) #outer loop
		j = 0
		while j <  (board[i].length) #inner loop
			print "#{board[i][j]} |" 
			j += 1
		end
		puts
		puts "--+--+--"
		i += 1
	end
end

def get_input(board)
	while true
		x = gets.to_i
		if (x.is_a? Integer) && (x<9) && (board[x/3][x%3]==" ")
			return x
		end
		puts "Invalid input, please try again."
	end
end

def check_board(board)	
	x_win = ["X","X","X"]
	o_win = ["O","O","O"]
	#check horizontally
	board.each do |row|
		if row - x_win == []
			puts "Player 1 Wins!"
			return true
		elsif row - o_win == []
			puts "Player 2 Wins!"
			return true
		end	
	end
	#check vertically
	board[0].each do |col|
		solution = []
		index = board[0].find_index(col) #Figure out why this is necessary-ask Rafi/Salman.
		solution << board[0][index] << board[1][index] << board[2][index]
			if solution - x_win == []
				puts "Player 1 Wins!"
				return true
			elsif solution - o_win == []
				puts "Player 2 Wins!"
				return true
			end
	end
	#check diagonally
	if board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[1][1]!=" "
		if board[0][0] == "X"
			puts "Player 1 Wins!"
		else puts "Player 2 Wins!"
		end
		return true
	elsif board[2][0] == board[1][1] && board[1][1] == board[2][2] && board[1][1]!=" "
		if board[0][0] == "X"
			puts "Player 1 Wins!"
		else puts "Player 2 Wins!"
		end
		return true
	end
	return false
end

turn = 1

puts "Welcome to Tic-Tac-Toe"

draw_board(board)

while turn < 10
	if (turn % 2 == 1)
		puts "Player 1's turn"
		input = get_input(board)
		board[input / 3][input % 3]="X"
	else puts "Player 2's turn"
		input = get_input(board)
		board[input/3][input%3]="O"
	end	
	draw_board(board)
	if check_board(board)
		break
	end
	turn += 1
end

puts "Game Over"