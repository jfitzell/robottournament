private
ensureNotEnded
	self hasEnded
		ifTrue: [ self errorEnded ]