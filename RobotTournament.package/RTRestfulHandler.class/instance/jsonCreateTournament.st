routes-tournaments
jsonCreateTournament
	<post>
	<path: 'tournaments/'>
	<produces: 'application/json'>

	| name tournament |
	name := self requestContext request postFields at: 'name' ifAbsent: [
		self requestContext respond: [ :response |
			response internalError; nextPutAll: 'You must specific a name' asJson ] ].
	
	tournament := RTTournament named: name.
	 self tournamentRegistry registerTournament: tournament.
	^ (self urlForTournament: tournament) greaseString asJson