running
playRemainingRounds
	[ self roundsRemaining > 0 ] whileTrue: [ self playRound ]