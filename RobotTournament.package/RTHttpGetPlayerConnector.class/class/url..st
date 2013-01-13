instance creation
url: urlString 
	^ self basicNew
		initializeWithUrl: urlString;
		yourself