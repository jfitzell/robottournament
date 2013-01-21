routes-tournaments
jsonTournament: id
	<get>
	<path: 'tournaments/id/{id}'>
	<produces: 'application/json'>

	^ self renderJsonComponent: (RTJsonTournamentView forTournament: (self tournamentWithId: id ifAbsent: [ self jsonNotFound ]))