running
play
	| moves |
	super play.
	moves := players collect: [ :each | each move: self ].
	self scoreMoves: moves