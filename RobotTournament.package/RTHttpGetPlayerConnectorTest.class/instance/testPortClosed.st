tests
testPortClosed
	| move connector |
	self listenDuring: [ :url |
			| newUrl |
			newUrl := url asZnUrl.
			newUrl port: newUrl port + 1.
			connector := RTHttpGetPlayerConnector url: newUrl.
			move := connector move: 'state' timeout: 1000 ]
		handler: [ 'move' ].
	self assert: move isNil