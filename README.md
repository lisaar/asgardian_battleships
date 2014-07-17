![Asgard](http://img1.wikia.nocookie.net/__cb20131207032431/disney/images/0/0b/Asgard.jpg "Asgard")

###The Rules of the game
The game is made up of two players. Players each have 5 ships of different lengths. Players organise their ships on their home grid, which is 10x10 (100 cells). The ships can be next to each other but two ships cannot share one cell. Also, ships can only be placed horizontally or vertically but cannot be placed diagonally. Players also have an away grid where they will record their attacks.

Each player takes a turn to attack his opponents ships on the grid. You may not attack a cell that you have previously attacked. If the coordinates are the same as where an opponent's ship is placed they get a response of "hit" otherwise they will get a response of "miss". Each response is recorded on the player's away grid.

Once a ship has been hit across it's entire length, it is then classified as sunk. Once a player has sunk all of his opponents ships the game is over and that player wins.

### Visual aid
`````````
####Away board - track of moves
|    | A | B | C | D | E | F | G | H | I | J |
| 01 |   |   |   |   |   |   |   |   |   |   |
| 02 | x | o |   |   |   |   | o |   |   |   |
| 03 | x |   |   |   |   |   |   |   |   |   |
| 04 | x |   |   |   |   |   |   | x | x | x |
| 05 |   |   |   |   |   |   |   |   |   |   |
| 06 |   |   |   |   | o |   |   |   |   |   |
| 07 |   |   |   | o |   |   |   |   |   |   |
| 08 |   |   |   |   |   |   |   |   |   |   |
| 09 |   |   |   |   |   |   |   |   |   |   |
| 10 |   |   |   |   |   |   |   |   |   |   |

####Home board - your ships
|    | A  | B  | C  | D  | E  | F  | G  | H  | I  | J  |
| 01 | ~  | h2 | h2 | ~  | ~  | ~  | ~  | ~  | ~  | ~  |
| 02 | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  |
| 03 | t3 | t3 | t3 | ~  | fx | f4 | f4 | f4 | ~  | ~  |
| 04 | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  |
| 05 | ~  | ~  | h3 | ~  | ~  | ~  | ~  | o5 | ~  | ~  |
| 06 | ~  | ~  | h3 | ~  | ~  | ~  | ~  | o5 | ~  | ~  |
| 07 | ~  | ~  | h3 | ~  | ~  | ~  | ~  | o5 | ~  | ~  |
| 08 | ~  | ~  | ~  | ~  | ~  | ~  | ~  | o5 | ~  | ~  |
| 09 | ~  | ~  | ~  | ~  | ~  | ~  | ~  | o5 | ~  | ~  |
| 10 | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  | ~  |


``````````

Hawkeye length: 2

Thor length: 3

Hulk length: 3

Fury length: 4

Odin length: 5


###Asgardian Battleships - Code Notes

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

A player has to place his ships on the board (or this can be auto-generated)
	horizontally or vertically (not diagnoally)


Allow each player to shoot at the opponent's board in turn
	The player who is shooting has to give a letter and number that matches the grid's row and column dimensions
	The coordinates are marked on the players away grid and the opponnents home grid
	The cell responds as a hit or a miss
	Tells player if they have sunk a ship and how many ships remain to be sunk
	Play passes to next person



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
| Place (on grid) | Ships / Grid |
| Has | Ships |
| Attacks | Ships |
| Looks into opponents board to see where he shot | grid
| Looks into his board to see which ships are left| Ships/grid


####Ships
| Responsibility     | Collaborators 					 |
| ------------------ | --------------------------------- |
| Can be placed on | grid |
| Receives hits from | cell |
| Knows its location on | grid |


####Game
| Responsibility     | Collaborators 					 |
| ------------------ | --------------------------------- |
| Can initialize a game with 2  | players |
| Can initialize a board with | grids |
| Can initialize | ships|

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