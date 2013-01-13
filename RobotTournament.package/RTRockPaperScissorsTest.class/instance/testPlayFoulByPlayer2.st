tests
testPlayFoulByPlayer2
	self validMoves do: [ :p1 |
		| game |
		game := self newGame.
		game players first connector response: p1.
		game players second connector response: 'invalid'.
		game play.
		self assert: game players first connector requests size = 1.
		self assert: game players second connector requests size = 1.
		self assert: (game results at: game players first) = 3.
		self assert: (game results at: game players second) = 0 ]