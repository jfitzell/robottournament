running
play
	| possibleMoves moves winner |
	self clearResults.
	moves := players collect: [ :each | each move: self ].
	self scoreMoves: moves