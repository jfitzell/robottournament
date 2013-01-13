tests
testPlayPlayer1Wins
	self winningPairs do: [ :each |
		| game |
		game := self newGame.
		game players first connector response: each first.
		game players second connector response: each second.
		game play.
		self assert: game players first connector requests size = 1.
		self assert: game players second connector requests size = 1.
		self assert: (game results at: game players first) = 3.
		self assert: (game results at: game players second) = 0 ]