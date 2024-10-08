testing - external
testGetSmallHTML
	| client |
	(client := self httpClient)
		url: self smallHtmlUrl;
		get.
	self assert: client isSuccess.
	self assert: client isContentTypeAcceptable.
	self assert: client response contentType equals: ZnMimeType textHtml.
	self assert: (client contents includesSubstring: 'Small').
	self assert: client isConnected.
	client close.
	self deny: client isConnected