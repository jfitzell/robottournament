initialization
initializeWithTournament: aTournament 
	self initialize.
	tournament := aTournament.
	players := OrderedCollection new.
	runner := self class defaultGameRunner