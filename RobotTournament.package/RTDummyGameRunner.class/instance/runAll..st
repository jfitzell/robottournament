running
runAll: aCollection
	self scheduleGames: aCollection.
	aCollection do: [ :each | self run: each ]