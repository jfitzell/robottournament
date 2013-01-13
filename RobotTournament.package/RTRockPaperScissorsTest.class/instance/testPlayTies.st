tests
testPlayTies
	self validMoves do: [ :move |
		| game |
		game := self newGame.
		game players first runner response: move.
		game players second runner response: move.
		game play.
		self assert: game players first runner requests size = 1.
		self assert: game players second runner requests size = 1.
		self assert: (game results at: game players first) = 1.
		self assert: (game results at: game players second) = 1 ]