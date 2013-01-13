routes
tournaments
	<get>
	<path: 'tournaments/'>
	<produces: 'application/json'>
	

	^ (self tournamentRegistry allTournaments collect: [ :aTournment | 	
		aTournment jsonDictionary at: #url put: (self urlForTournament: aTournment) greaseString; yourself
		]) asJson.
	

