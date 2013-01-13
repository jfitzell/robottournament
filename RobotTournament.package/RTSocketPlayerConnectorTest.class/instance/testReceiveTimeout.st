tests
testReceiveTimeout
	| move timeout |
	timeout := 30.
	self listenDuring: [ :port |
		| connector |
		connector := RTSocketPlayerConnector host: '127.0.0.1' port: port.
		move := connector move: 'state' timeout: timeout ]
		receiving: [ :s | ]
		responding: [ (Delay forMilliseconds: timeout + 1) wait. 'move' ].
	self assert: move isNil