testing - external
testQuerySearchEngine
	| client |

	"Warning: search engine will not allow (many) API style requests and might start rejecting them"

	(client := self httpClient)
		maximumLineLength: 20 * 1024;
		http;
		host: 'search.brave.com';
		addPath: 'search';
		queryAt: 'q' put: 'Pharo Smalltalk';
		get.

	[	
		self 
			assert: (client isSuccess)
			description: ('Response should be success. Received {1}' format: {
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