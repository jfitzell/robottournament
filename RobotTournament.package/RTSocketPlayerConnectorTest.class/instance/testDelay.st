tests
testDelay
	| move timeout delay |
	timeout := 1000.
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
	self assert: move = 'move'