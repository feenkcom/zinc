testing - external
testQueryGoogle
	| client |
	
	(client := self httpClient)
		http;
		host: 'www.google.com';
		addPath: 'search';
		queryAt: 'q' put: 'Pharo Smalltalk';
		get.
	
	[	
		self 
			assert: (client isSuccess or: [client response code = 429])
			description: ('Response should be success or 429 code. [{1}] received' format: {
				client response  statusLine}).
		self 
			assert: (client response contentType matches: ZnMimeType textHtml)
			description: 'Response has content type html'.
		client isSuccess  ifTrue: [
			self 
				assert: (client contents includesSubstring: 'pharo.org')
				description: 'Response includes string pharo.org' ]
	] ensure: [ client close ]