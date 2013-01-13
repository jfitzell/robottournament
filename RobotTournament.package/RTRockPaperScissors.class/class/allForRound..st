instance creation
allForRound: aRound
	aRound hasStarted ifFalse: [ self error: 'Round has not started; players not confirmed' ].
	
	^ (self setsOfPlayers: aRound players sized: 2) collect: [ :players | self forPlayers: players ]