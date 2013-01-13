tests
testPlayers
	| a b runner |
	a := tournament addPlayer: (RTPlayer forTesting).
	self assert: round players size = 1.
	b := tournament addPlayer: (RTPlayer forTesting).
	self assert: round players size = 2.
	
	round runner: (runner := RTDummyGameRunner new).
	runner pause: [
		round start.
		self assert: round players size = 2.
		self assert: (round players includes: a).
		self assert: (round players includes: b).
	
		tournament addPlayer: (RTPlayer forTesting).
		self assert: round players size = 2.
		tournament removePlayer: a.
		self assert: round players size = 2 ]