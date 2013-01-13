tests
testHost
	| connector |
	connector := RTSocketPlayerConnector host: '127.0.0.1' port: 1234.
	self assert: connector host = '127.0.0.1'.
	connector host: 'example.com'.
	self assert: connector host = 'example.com'