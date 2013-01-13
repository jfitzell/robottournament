tests
testUrl
	| connector |
	connector := RTHttpGetPlayerConnector url: 'http://127.0.0.1:1234/foo'.
	self assert: connector url = 'http://127.0.0.1:1234/foo'.
	connector url: 'http://example.com/foo'.
	self assert: connector url = 'http://example.com/foo'