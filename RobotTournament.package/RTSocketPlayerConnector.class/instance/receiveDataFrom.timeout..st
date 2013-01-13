private
receiveDataFrom: socket timeout: timeoutMilliseconds
	| start data |
	start := Time millisecondClockValue.
	^ String streamContents: [ :stream |
		[ socket isConnected | socket dataAvailable ] whileTrue: [
			| remaining |
			remaining := timeoutMilliseconds - (Time millisecondClockValue - start).
			remaining <= 0
				ifTrue: [ socket closeAndDestroy: 1 ]
				ifFalse: [
					[ socket waitForDataFor: remaining.
					stream nextPutAll: socket receiveData ]
						on: ConnectionClosed
						do: [ :e | socket closeAndDestroy: 1 ] ] ] ]