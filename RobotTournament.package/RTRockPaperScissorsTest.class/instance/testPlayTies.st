tests
testPlayTies
	self validMoves do: [ :move |
		| game |
		game := self newGame.
		game players first connector response: move.
		game players second connector response: move.
		game play.
		self assert: game players first connector requests size = 1.
		self assert: game players second connector requests size = 1.
		self assert: (game results at: game players first) = 1.
		self assert: (game results at: game players second) = 1 ]