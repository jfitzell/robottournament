routes-tournaments
jsonCreateTournament
	<post>
	<path: 'tournaments/'>
	<produces: 'application/json'>

	| tournament |
	tournament := self createTournament.
	^ (self urlForTournament: tournament) greaseString asJson