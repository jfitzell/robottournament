initialization
initializeWithName: aString 
	self initialize.
	name := aString.
	players := OrderedCollection new.
	rounds := #().
	clock := DateAndTime