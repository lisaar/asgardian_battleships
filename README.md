Asgardian Battleships
Each player gets a board with 2 grids. 
	Each grid is 10x10
		rows from A-J
		columns from 1  -10
	The grid is made up of cells
		cells are initailized with "water" status
		cells can adopt "ship" status
		cells can be marked with "missed" o status
		cells can be marked with "hit" x status
	One grid is the home grid containing your ships and where the player has attacked your grid
		with cells
			contains ship and water status
			and hit and missed status
		knows when a ship is sunk
			then subtracts a sunk ship from the total ship count
	The other grid is an away grid, it is a blank grid
		this never contains ship or water status
		it contains hit and missed status
		this allows the player to know if an entire opponents ship has been sunk

Each player gets one of each type of ship
	1 x length 2
	2 x length 3
	1 x length 4
	1 x length 5

A player has to place his ships on the board (or this can be auto generated)
	horizontally or vertically (not diagnoally)


Allow each player to shoot at the opponents board in turn
	The player who is shooting has to give a letter and number that matches the grid's row and column dimensions
	The coordinates are marked on the players away grid and the opponnents home grid
	The cell responds as a hit or a miss
	Tells player if they have sunk a ship and how many ships remain to be sunk
	Play passes to next person



