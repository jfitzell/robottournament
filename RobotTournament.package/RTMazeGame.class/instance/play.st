running
play
	winner := nil.
	forfeit := nil.
	maxRounds := 200.
	currentRound := 1.
	maze := RTMaze fromString: self class defaultMap.
	maze positionAt: $1 put: 2@2.
	maze positionAt: $2 put: 2@4.
	[ self hasEnded ] whileFalse: [
		players do: [ :player |
			self hasEnded ifFalse: [ 
				[ [ player move: self ]
					on: RTPlayerWin
					do: [ :e | self recordWinner: player ] ]
					on: Error
					do: [ :e | self recordForfeit: player ] ] ].
		currentRound := currentRound + 1 ]