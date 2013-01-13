tests
testPlayFoulByBoth
	| game |
	game := self newGame.
	game players first connector response: 'invalid'.
	game players second connector response: 'invalid'.
	game play. 
	self assert: game players first connector requests size = 1.
	self assert: game players second connector requests size = 1.
	self assert: (game results at: game players first) = 0.
	self assert: (game results at: game players second) = 0