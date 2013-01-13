running
move: stateString timeout: timeoutMilliseconds
	| socket serverAddr time move |
	socket := Socket newTCP.
	[ [ serverAddr := NetNameResolver addressForName: host timeout: (resolutionTimeout / 1000).
	socket connectTo: serverAddr port: port waitForConnectionFor: (connectionTimeout / 1000).
	socket sendData: stateString.
	time := Time millisecondsToRun: [
		move := self receiveDataFrom: socket timeout: timeoutMilliseconds ] ]
			on: NetworkError
			do: [ ^ nil ] ]
				ensure: [ socket closeAndDestroy: 1 ].
	^ time > timeoutMilliseconds
		ifTrue: [ nil ]
		ifFalse: [ move ]