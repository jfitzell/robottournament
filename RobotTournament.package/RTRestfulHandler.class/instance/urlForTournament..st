helpers
urlForTournament: aTournament 
	^ self url
		addAllToPath: #('tournaments' 'id');
		addToPath: (self idForTournament: aTournament );
		yourself