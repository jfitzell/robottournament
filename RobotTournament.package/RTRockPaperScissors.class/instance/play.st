running
play
	| moves |
	super play.
	moves := players collect: [ :each | self playPlayer: each ].
	self scoreMoves: moves