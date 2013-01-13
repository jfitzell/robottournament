instance creation
forPlayers: anOrderedCollection
	^ self basicNew
		initializeWithPlayers: anOrderedCollection;
		yourself