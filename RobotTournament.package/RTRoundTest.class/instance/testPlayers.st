tests
testPlayers
	| a b |
	a := tournament addPlayer: (RTPlayer forTesting).
	b := tournament addPlayer: (RTPlayer forTesting).
	self should: [ round players ] raise: Error. "Not started"
	
	round start.
	self assert: round players size = 2.
	self assert: (round players includes: a).
	self assert: (round players includes: b).
	
	tournament addPlayer: (RTPlayer forTesting).
	self assert: round players size = 2.
	tournament removePlayer: a.
	self assert: round players size = 2