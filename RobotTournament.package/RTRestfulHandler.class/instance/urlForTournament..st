urls
urlForTournament: aTournament 
	^ self tournamentsUrl
		addToPath: 'id';
		addToPath: (self idForTournament: aTournament );
		yourself