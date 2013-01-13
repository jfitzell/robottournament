tests
testAllForRound
	| round games |
	round := self roundForNumPlayers: 3.
	round start.
	games := RTRockPaperScissors allForRound: round.
	
	self assert: games size = 6.
	self pairsFor: round do: [ :p1 :p2 |
		self assert: (games anySatisfy: [ :each |
			each players first = p1 and: [ each players second = p2 ] ]) ].