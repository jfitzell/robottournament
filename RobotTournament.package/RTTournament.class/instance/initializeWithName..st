initialization
initializeWithName: aString 
	self initialize.
	name := aString.
	players := Set new.
	rounds := #().
	clock := DateAndTime