testing - external
testQuerySearchEngine
	| client |

	(client := self httpClient)
		http;
		host: 'duckduckgo.com';
		addPath: 'html';
		queryAt: 'q' put: 'Pharo Smalltalk';
		get.

	[	
		self 
			assert: (client isSuccess or: [client response code = 429])
			description: ('Response should be success or 429 code. Received {1}' format: {
				client response  statusLine }).
		self 
			assert: (client response contentType matches: ZnMimeType textHtml)
			description: ('Response should have content type html. Received {1}' format: {
				client response contentType }).
		client isSuccess  ifTrue: [
			self 
				assert: (client contents includesSubstring: 'pharo.org')
				description: ('Response should includes string "pharo.org". Received: {1}' format: {
					client contents }) ]
	] ensure: [ client close ]