routes-tournaments
jsonTournament: id
	<get>
	<path: 'tournaments/id/{id}'>
	<produces: 'application/json'>

	^ (self tournamentWithId: id) jsonDictionary asJson