tests
testHostInvalid
	| move |
	self listenDuring: [ :url |
			| connector |
			connector := RTHttpGetPlayerConnector url: 'http://127.0.0.999/'.
			move := connector move: 'state' timeout: 1000 ]
		handler: [ 'move' ].
	self assert: move isNil