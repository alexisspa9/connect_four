require "./lib/connect_four/square.rb"

class Board
	attr_accessor :grid
	def initialize(rows=6, cols=7)
		@rows = rows
		@cols = cols
		@grid = create_grid
	end

	def make_move(col, marker)
		return "Invalid move: Column #{col} is already full." if grid[0][col].value != " "
		for i in 0..@rows-1
			current = grid[i][col]
			down = current.down
			if down == nil
				current.value = marker
			else
				down_value =  down.value
				if down_value == " "
					next
				else
					current.value = marker
					return
				end
			end
		end
	end

	private
	def create_grid
		grid = []
		for i in 1..@rows
			row = []
			for j in 1..@cols
				row.push(Square.new({row: i, col: j}))
			end
			grid.push(row)
		end
		add_connections(grid)
		grid		
	end

	def add_connections(grid)
		for i in 0..(@rows-1)
	      for j in 0..(@cols-1)
	        element = grid[i][j]
	        if j-1 >= 0 && j-1 <= 6
	          element.left =  grid[i][j-1]
	        end
	        if j+1 >= 0 && j+1 <= 6
	          element.right = grid[i][j+1]
	        end
	        if i-1 >= 0 && i-1 <= 5
	          element.up = grid[i-1][j]
	        end
	        if i+1 >= 0 && i+1 <= 5
	          element.down = grid[i+1][j]
	        end
	        if (i-1 >= 0 && i-1 <= 5) && (j-1 >= 0 && j-1 <= 6)
	          element.up_left = grid[i-1][j-1]
	        end
	        if (i+1 >= 0 && i+1 <= 5) && (j-1 >= 0 && j-1 <= 6)
	          element.down_left = grid[i+1][j-1]
	        end
	        if (i-1 >= 0 && i-1 <= 5) && (j+1 >= 0 && j+1 <= 6)
	          element.up_right = grid[i-1][j+1]
	        end
	        if (i+1 >= 0 && i+1 <= 5) && (j+1 >= 0 && j+1 <= 6)
	          element.down_right = grid[i+1][j+1]
	        end
	      end
    	end
	end
	
end