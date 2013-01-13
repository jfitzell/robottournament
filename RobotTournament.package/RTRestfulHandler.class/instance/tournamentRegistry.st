accessing
tournamentRegistry
	^ tournamentRegistry ifNil: [ tournamentRegistry := RTTournamentRegistry new ]