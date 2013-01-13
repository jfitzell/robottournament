accessing
game
	^ game ifNil: [ self class defaultGame ]