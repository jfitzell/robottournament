private
scoreMoves: moves
	| possibleMoves winner m1 m2 |
	m1 := moves first.
	m2 := moves second.
	possibleMoves := self validMoves.
	((self isValidMove: m1) and: [ self isValidMove: m2 ])
		ifTrue: [
			"Both players played valid moves; who wins?"
			winner := self winnerMove1: m1 move2: m2.
			winner isNil
				ifTrue: [ self recordTie ]
				ifFalse: [ self recordWinFor: winner ] ]
		ifFalse: [
			"One or both played an invalid move; unless both did, give a point to the other"
			(self isValidMove: m1) ifTrue: [ self recordWinFor: players first ].
			(self isValidMove: m2) ifTrue: [ self recordWinFor: players second ] ]