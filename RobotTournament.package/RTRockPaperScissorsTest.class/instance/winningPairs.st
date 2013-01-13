helpers
winningPairs
	^ self losingPairs collect: [ :each | each reversed ]