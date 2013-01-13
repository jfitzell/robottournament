running
move: aGame
	| move |
	move := self connector move: (aGame stateForPlayer: self) timeout: 1000.
	Transcript show: (self name, ': ', move asString); cr.
	^ move