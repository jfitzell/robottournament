testing
hasEnded
	^ (winner notNil or: [ forfeit notNil ]) or: [ currentTurn > maxTurns ]