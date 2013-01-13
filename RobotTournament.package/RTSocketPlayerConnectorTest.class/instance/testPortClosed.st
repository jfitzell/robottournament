tests
testPortClosed
	| move state |
	self listenDuring: [ :port |
		| connector |
		connector := RTSocketPlayerConnector host: '127.0.0.1' port: port + 1.
		move := connector move: 'state' timeout: 1000 ]
		receiving: [ :s | ]
		responding: 'move'.
	self assert: move isNil