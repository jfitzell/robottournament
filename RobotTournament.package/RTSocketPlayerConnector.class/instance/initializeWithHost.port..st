initialization
initializeWithHost: hostString port: portNumber 
	self initialize.
	host := hostString.
	port := portNumber.
	resolutionTimeout := 2000.
	connectionTimeout := 2000