tests
testGame
	self assert: tournament game = tournament class defaultGame.
	tournament game: RTMaze.
	self assert: tournament game = RTMaze