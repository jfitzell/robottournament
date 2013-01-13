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
			(moveBlock isBlock and: [ moveBlock argumentCount = 1 ])
				ifTrue: [ moveBlock value: serverSocket ]
				ifFalse: [ serverSocket sendData: moveBlock value ] ]
					ensure: [ serverSocket closeAndDestroy: 1 ] ] ] fork.
	connectorBlock value: listener localPort ]
		ensure: [
			listener closeAndDestroy: 1.
			listenProcess ifNotNil: [ listenProcess terminate ] ]