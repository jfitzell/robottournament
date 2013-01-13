instance creation
forTournaments: tournaments
	^ self basicNew
		initializeWithTournaments: tournaments;
		yourself
	