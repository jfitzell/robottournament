helpers
roundForNumPlayers: anInteger
	| round |
	round := RTRound forTesting.
	1 to: anInteger do: [ :i | (round tournament addPlayer: RTPlayer forTesting) name: ('Test Player ', i asString) ].
	^ round