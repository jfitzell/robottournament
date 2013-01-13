initialization
initializeWithName: aString 
	self initialize.
	name := aString.
	players := Set new.
	rounds := #().
	length := self class defaultLength.
	interval := self class defaultInterval.
	clock := DateAndTime