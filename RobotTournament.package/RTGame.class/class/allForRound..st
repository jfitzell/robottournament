instance creation
allForRound: aRound
	^ (self setsOfPlayers: aRound players sized: 2) collect: [ :players | self forPlayers: players ]