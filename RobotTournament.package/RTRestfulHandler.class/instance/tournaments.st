routes
tournaments
	<get>
	<path: 'tournaments/'>
	<produces: 'application/json'>
	

	^ (RTTournament allInstances collect: [ :aTournment | 	
		aTournment jsonDictionary at: #url put: (self urlForTournament: aTournment) greaseString; yourself
		]) asJson.
	

