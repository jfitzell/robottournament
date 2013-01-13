tests
testResults
	| a b results |
	tournament length: 3.
	(a := tournament addPlayer: (RTPlayer forTesting)) connector response: 'rock'.
	(b := tournament addPlayer: (RTPlayer forTesting)) connector response: 'paper'.
	
	self assert: tournament results isEmpty.
	tournament start.
	tournament playRemainingRounds.
	results := tournament results.
	self assert: (results at: a) = (tournament rounds sum: [ :round | round results at: a ]).
	self assert: (results at: b) = (tournament rounds sum: [ :round | round results at: b ])