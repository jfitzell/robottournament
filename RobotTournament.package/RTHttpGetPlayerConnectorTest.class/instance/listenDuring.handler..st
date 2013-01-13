helpers
listenDuring: connectorBlock handler: handlerBlock
	| server |
	server := (ZnServer on: 1234)
		bindingAddress: NetNameResolver loopBackAddress;
		delegate: (ZnValueDelegate with: [ :request |
			| response |
			response := handlerBlock cull: request.
			response isString
				ifTrue: [ ZnResponse ok: (ZnEntity text: response)]
				ifFalse: [ response ] ]);
		yourself.
	[ server start.
	self assert: server isRunning & server isListening.
	connectorBlock value: ('http://localhost:', server port asString, '/') ] 
		ensure: [ server stop ]