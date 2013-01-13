helpers
assertNilMoveForHandler: aBlock
	| move |
	self listenDuring: [ :url |
			| connector |
			connector := RTHttpGetPlayerConnector url: url.
			move := connector move: 'state' timeout: 1000 ]
		handler: aBlock.
	self assert: move isNil