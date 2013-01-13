instance creation
fromString: mapString 
	^ self basicNew
		initializeWithMapString: mapString;
		yourself