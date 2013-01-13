running
scheduleGames: aCollection
	aCollection do: [ :each | self scheduleGame: each ]