tests
testPlayerConfiguration
	| player |
	player := RTPlayer named: 'test'.
	player host: '127.0.0.1' port: 1234.
	self assert: player connector host = '127.0.0.1'.
	self assert: player connector port = 1234