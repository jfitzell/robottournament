tests
testResults
	| a b c runner results |
	a := tournament addPlayer: (RTPlayer forTesting).
	b := tournament addPlayer: (RTPlayer forTesting).
	c := tournament addPlayer: (RTPlayer forTesting).
	round runner: (runner := RTDummyRoundRunner new).
	
	self should: [ round results ] raise: Error. "Not started"
	
	a runner response: 'rock'.
	b runner response: 'rock'.
	c runner response: 'scissors'.

	round play.
	
	results := round results.
	self assert: (results at: a) = 8.
	self assert: (results at: b) = 8.
	self assert: (results at: c) = 0