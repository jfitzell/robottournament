tests
testHostUnreachable
	| move time |
	self listenDuring: [ :port |
		| connector |
		connector := RTSocketPlayerConnector host: '127.0.0.2' port: port.
		connector connectionTimeout: 100.
		time := Time millisecondsToRun: [
			move := connector move: 'state' timeout: 1000 ] ]
		receiving: [ :s | ]
		responding: 'move'.
	self assert: move isNil.
	self assert: time >= 100.
	self assert: time < 130