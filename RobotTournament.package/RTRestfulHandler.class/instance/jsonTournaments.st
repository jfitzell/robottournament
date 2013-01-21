routes-tournaments
jsonTournaments
	<get>
	<path: 'tournaments/'>
	<produces: 'application/json'>

	^ self renderJsonComponent: (RTJsonTournamentRegistryView forTournamentRegistry: (self tournamentRegistry))