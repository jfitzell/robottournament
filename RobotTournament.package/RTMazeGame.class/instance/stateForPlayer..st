as yet unclassified
stateForPlayer: aPlayer 
	^ String streamContents: [ :stream |
		stream
			nextPutAll: 'You are player ';
			nextPutAll: (players indexOf: aPlayer) asString;
			cr;
			nextPutAll: maze currentMapString ]