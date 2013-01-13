instance creation
host: hostString port: port 
	^ self basicNew
		initializeWithHost: hostString port: port;
		yourself