tests
testRoundsRemaining
	self assert: tournament roundsRemaining = tournament length.
	tournament start.
	self assert: tournament roundsRemaining = tournament length.
	tournament rounds withIndexDo: [ :round :i |
		tournament playRound.
		self assert: tournament roundsRemaining = (tournament length - i) ]