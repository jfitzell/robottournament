tests
testResultsWithoutPlayers
	| game |
	game := RTRockPaperScissors forPlayers: #().
	self assert: game results isEmpty