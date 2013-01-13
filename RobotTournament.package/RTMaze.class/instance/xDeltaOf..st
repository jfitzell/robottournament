private
xDeltaOf: aCharacter 
	^ aCharacter = $W ifTrue: [ -1 ] ifFalse: [
		aCharacter = $E ifTrue: [ 1 ] ifFalse: [ 0 ] ]