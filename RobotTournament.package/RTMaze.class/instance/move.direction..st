running
move: player direction: move
	| delta newPosition tile |
	delta := Point x: (self xDeltaOf: move) y: (self yDeltaOf: move).
	(delta = (Point x: 0 y: 0)) ifTrue: [ RTInvalidMove signal ].
	newPosition := (positions at: player) translateBy: delta.
	tile := (map at: newPosition y ifAbsent: [ self error: 'invalid position' ])
		at: newPosition x ifAbsent: [ self error: 'invalid position' ].
	tile = $* ifTrue: [ RTWallCollision signal ].
	(positions anySatisfy: [ :each | each = newPosition ]) ifTrue: [ RTPlayerCollision signal ].
	
	tile = $F ifTrue: [ RTPlayerWin signal ].
	positions at: player put: newPosition