tests
testExcessiveDelay
	| move timeout delay |
	timeout := 50.
	delay := 100.
	self listenDuring: [ :port |
			| connector |
			connector := RTSocketPlayerConnector host: '127.0.0.1' port: port.
			move := connector move: 'state' timeout: timeout ]
		receiving: [ :s | ]
		responding: [ :serverSocket |
			serverSocket sendData: 'mo'.
			(Delay forMilliseconds: delay) wait.
			serverSocket sendData: 've' ].
	self assert: move isNil "Or should we accept what we've received so far?"