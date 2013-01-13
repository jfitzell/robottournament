testing
hasEnded
	^ (winner notNil or: [ forfeit notNil ]) or: [ currentRound > maxRounds ]