tests
testHostUnresolvable
	| move state |
	self listenDuring: [ :port |
		| connector |
		connector := RTSocketPlayerConnector host: 'example.foobar' port: port.
		move := connector move: 'state' timeout: 1000 ]
		receiving: [ :s | state := s ]
		responding: 'move'.
	self assert: move isNil