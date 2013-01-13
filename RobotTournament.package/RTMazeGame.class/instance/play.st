running
play
	super play.
	self reset.
	[ self hasEnded ] whileFalse: [ self playTurn ]