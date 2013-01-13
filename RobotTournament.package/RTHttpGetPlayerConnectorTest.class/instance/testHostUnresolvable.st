tests
testHostUnresolvable
	| move |
	self listenDuring: [ :url |
			| connector |
			connector := RTHttpGetPlayerConnector url: 'http://example.foobar/'.
			move := connector move: 'state' timeout: 1000 ]
		handler: [ 'move' ].
	self assert: move isNil