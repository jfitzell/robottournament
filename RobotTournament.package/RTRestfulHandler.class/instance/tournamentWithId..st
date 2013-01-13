helpers
tournamentWithId: aString 
	^ self tournamentRegistry tournamentAt: (aString asNumber asInteger)