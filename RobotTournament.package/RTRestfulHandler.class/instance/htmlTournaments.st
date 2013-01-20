routes-tournaments
htmlTournaments
	<get>
	<path: 'tournaments/'>
	<produces: 'text/html'>

	^ self renderHtmlComponent:
		(RTTournamentsList forTournaments: self tournamentRegistry allTournaments)