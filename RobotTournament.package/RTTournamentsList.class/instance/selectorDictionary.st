helpers
selectorDictionary
	^ GRSmallDictionary new
		at: 'name' put: [ :tournament :html | html anchor url: (self urlForTournament: tournament); with: tournament name ];
		at: 'game' put: [ :tournament | tournament game name];
		at: 'players' put: [ :tournament | tournament players size ];
		at: 'rounds played' put: [ :tournament | (tournament length - tournament roundsRemaining) greaseString, ' / ', tournament length greaseString ];
		at: 'seconds between rounds' put: [ :tournament | tournament interval ];
		at: 'seconds to next round' put: [ :tournament | tournament timeRemaining ];
		yourself