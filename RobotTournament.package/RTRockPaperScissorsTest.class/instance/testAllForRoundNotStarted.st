tests
testAllForRoundNotStarted
	| round |
	round := self roundForNumPlayers: 2.
	self should: [ RTRockPaperScissors allForRound: round ] raise: Error. "Round not started"