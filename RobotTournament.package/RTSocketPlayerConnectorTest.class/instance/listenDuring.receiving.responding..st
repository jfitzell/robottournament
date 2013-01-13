tests
listenDuring: connectorBlock receiving: stateBlock responding: moveBlock
	| listener connector listenProcess state move |
	listener := Socket newTCP.
	[ listener listenOn: 0 backlogSize: 4.
	listenProcess := [
		(listener waitForAcceptFor: 1) ifNotNil: [ :serverSocket |
			[ serverSocket waitForDataFor: 1.
			state := serverSocket receiveDataTimeout: 1.
			stateBlock value: state.
			serverSocket sendData: moveBlock value ]
				ensure: [ serverSocket close; destroy ] ] ] fork.
	connectorBlock value: listener localPort ]
		ensure: [
			listener close; destroy.
			listenProcess ifNotNil: [ listenProcess terminate ] ]