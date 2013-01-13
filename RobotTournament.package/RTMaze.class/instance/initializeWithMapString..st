initialization
initializeWithMapString: mapString
	self initialize.
	map := self parseMap: mapString.
	positions := Dictionary new