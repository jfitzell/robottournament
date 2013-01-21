running
clearResults
	^ results := IdentityDictionary newFrom: (self players collect: [ :each | each -> 0 ])