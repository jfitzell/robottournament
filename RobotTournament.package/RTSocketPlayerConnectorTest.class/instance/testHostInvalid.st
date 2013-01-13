tests
testHostInvalid
	| move state |
	self listenDuring: [ :port |
		| connector |
		connector := RTSocketPlayerConnector host: '127.0.0.999' port: port.
		move := connector move: 'state' timeout: 1000 ]
		receiving: [ :s | state := s ]
		responding: 'move'.
	self assert: move isNil