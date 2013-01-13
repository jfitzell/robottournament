running
playTurn
	players do: [ :player | self hasEnded ifFalse: [ self playPlayer: player ] ].
	currentTurn := currentTurn + 1