tests
testReceiveTimeout
	| move timeout |
	timeout := 30.
	self listenDuring: [ :url |
			| connector |
			connector := RTHttpGetPlayerConnector url: url.
			move := connector move: 'state' timeout: timeout ]
		handler: [ (Delay forMilliseconds: timeout + 1) wait. 'move' ].
	self assert: move isNil