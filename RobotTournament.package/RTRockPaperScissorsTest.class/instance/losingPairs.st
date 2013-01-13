helpers
losingPairs
	| moves |
	moves := self validMoves.
	^ moves collect: [ :loser |
		Array with: loser with: (moves at: (((moves indexOf: loser) rem: moves size) + 1)) ].