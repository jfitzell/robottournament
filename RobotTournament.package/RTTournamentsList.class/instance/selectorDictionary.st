as yet unclassified
selectorDictionary
	^ GRSmallDictionary new
		at: 'name' put: [ :tournament |  tournament name ];
		at: 'number of rounds' put: [ :tournament |  tournament length];
		at: 'game' put: [ :tournament |  tournament game name];
		at: 'seconds between rounds' put: [ :tournament |  tournament interval ];
		at: 'rounds remaining' put: [ :tournament |  tournament roundsRemaining ];
		at: 'seconds to next round' put: [ :tournament |  tournament timeRemaining ];
		yourself