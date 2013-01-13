initialization
initializeWithName: aString 
	self initialize.
	name := aString.
	players := Bag new.
	rounds := #().
	length := self class defaultLength.
	interval := self class defaultInterval.
	clock := DateAndTime