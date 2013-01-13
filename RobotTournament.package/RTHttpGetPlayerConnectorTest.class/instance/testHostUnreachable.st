tests
testHostUnreachable
	| move time |
	self listenDuring: [ :url |
			| connector |
			connector := RTHttpGetPlayerConnector url: 'http://127.0.0.2/'.
			"connector connectionTimeout: 100."
			time := Time millisecondsToRun: [
				move := connector move: 'state' timeout: 100 ] ]
		handler: [ 'move' ].
	self assert: move isNil.
	self assert: time >= 100.
	self assert: time < 130