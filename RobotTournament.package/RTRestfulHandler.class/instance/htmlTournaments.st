routes-tournaments
htmlTournaments
	<get>
	<path: 'tournaments/'>
	<produces: 'text/html'>
	| component |
	component := RTTournamentsList forTournaments: self tournamentRegistry allTournaments.
	^ self renderHtmlComponent: component