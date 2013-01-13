tests
testPlayerConfiguration
	| player |
	player := RTPlayer named: 'test'.
	player get: 'http://127.0.0.1:1234/foo'.
	self assert: player connector url = 'http://127.0.0.1:1234/foo'