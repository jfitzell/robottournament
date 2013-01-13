tests
testSuccessful
	| move |
	self listenDuring: [ :url |
			| connector |
			connector := RTHttpGetPlayerConnector url: url.
			move := connector move: 'abcdef' timeout: 1000 ]
		handler: [ :request |
			self assert: request method = 'GET'.
			self assert: (request uri pathPrintString = '/').
			self assert: ((request uri queryAt: 'state') = 'abcdef').
			'move' ].
	self assert: move = 'move'