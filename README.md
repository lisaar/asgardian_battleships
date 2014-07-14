###Asgardian Battleships
Each player gets a board with 2 grids.
	Each grid is 10x10
		rows from A-J
		columns from 1  to 10.
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

### Visual aid
`````````
|    | A  | B  | C  | D  | E  | F  | G  | H  | I  | J  |
| 01 | ~  | h2 | h2 | ~  | ~  | ~  | ~  | ~  | ~  | ~  |
| 02 | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  |
| 03 | t3 | t3 | t3 | ~  | fx | f4 | f4 | f4 | ~  | ~  |
| 04 | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  |
| 05 | ~  | ~  | l3 | ~  | ~  | ~  | ~  | o5 | ~  | ~  |
| 06 | ~  | ~  | l3 | ~  | ~  | ~  | ~  | o5 | ~  | ~  |
| 07 | ~  | ~  | l3 | ~  | ~  | ~  | ~  | o5 | ~  | ~  |
| 08 | ~  | ~  | ~  | ~  | ~  | ~  | ~  | o5 | ~  | ~  |
| 09 | ~  | ~  | ~  | ~  | ~  | ~  | ~  | o5 | ~  | ~  |
| 10 | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  |
``````````

Hawkeye length: 2

Thor length: 3

Loki length: 3

Fury length: 4

Odin length: 5

### CRC
####Grid
| Responsibility     | Collaborators 					 |
| ------------------ | --------------------------------- |
| Contains 100 | Cells |
| Contains a | Ship |
| Should know how many are left | Ships |


####Cell
| Responsibility     | Collaborators 					 |
| ------------------ | --------------------------------- |
| Should know it holds a | ship |
| Receive hit from | player |
| Record hit/miss from | player |
| Know it's position on | grid |


####Players
| Responsibility     | Collaborators 					 |
| ------------------ | --------------------------------- |
| Organises (on grid) | Ships / Grid |
| Has | Ships |
| Attacks | Ships |
| Knows which ships are sunk | Ships/grid
| Knows which ships are left | Ships/grid


####Ships
| Responsibility     | Collaborators 					 |
| ------------------ | --------------------------------- |
| Can be placed on | grid |
| Receives hits from | cell |
| Knows its location on | grid |


### Methods overview...
####Grid
* Contains 100 cells
* Has rows organised by letters
* Has cols organised by numbers
* Organises Ship
* Can be a 'home' Grid
* Can be an 'away' Grid


####Players
* Has Board
* Has Ships
* Play Game
* Wins/Loses Game
* Can view Home Grid
* Can view Away Grid
* Knows how many Ships left
* Knows which Ships left
* Knows how many ships sunk
* Knows when Game over


####Cell
* To be initiated as empty
* To hold A ship
* To receive a hit/miss
* To record a hit/miss
* To know it's position within the grid


####Ship
* Have Set Lengths
* Can be placed On grid
* Have a name
* Receive Hit
* Knows when Sunk