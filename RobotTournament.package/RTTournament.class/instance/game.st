accessing
game
	^ gameClass ifNil: [ self class defaultGame ]