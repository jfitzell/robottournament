tests
testPort
	| connector |
	connector := RTSocketPlayerConnector host: '127.0.0.1' port: 1234.
	self assert: connector port = 1234.
	connector port: 1235.
	self assert: connector port = 1235