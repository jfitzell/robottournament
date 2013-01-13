private
yDeltaOf: aCharacter
	^ aCharacter = $N ifTrue: [ -1 ] ifFalse: [
		aCharacter = $S ifTrue: [ 1 ] ifFalse: [ 0 ] ]