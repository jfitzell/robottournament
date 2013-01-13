tests
testPlay
	| a b c runner results |
	a := tournament addPlayer: (RTPlayer forTesting).
	b := tournament addPlayer: (RTPlayer forTesting).
	c := tournament addPlayer: (RTPlayer forTesting).
	round runner: (runner := RTDummyRoundRunner new).
	
	round play.
	
	self assert: runner playedGames size = 6.
	self assert: round hasEnded.
	self should: [ round play ] raise: Error. "Already ended"
	
	self assert: round players size = 3.
	self assert: (round players includes: a).
	self assert: (round players includes: b).
	self assert: (round players includes: c)