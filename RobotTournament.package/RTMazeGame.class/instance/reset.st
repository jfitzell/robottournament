running
reset
	winner := nil.
	forfeit := nil.
	maxTurns := 200.
	currentTurn := 1.
	maze := RTMaze fromString: self class defaultMap.
	maze positionAt: $1 put: 2@2.
	maze positionAt: $2 put: 2@4.