accessing
addPlayer: aPlayer 
	^ (players includes: aPlayer) ifFalse: [ players add: aPlayer ]