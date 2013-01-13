running
move: aGame
	^ self connector move: (aGame stateForPlayer: self) timeout: 1000